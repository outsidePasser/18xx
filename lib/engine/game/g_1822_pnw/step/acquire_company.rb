# frozen_string_literal: true

require_relative '../../../step/route'

module Engine
  module Game
    module G1822PNW
      module Step
        class AcquireCompany < Engine::Step::AcquireCompany
          def actions(entity)
            return ['choose'] if @choices

            super
          end

          def process_acquire_company(action)
            return super unless @game.backroom_company?(action.company)

            @log << "#{action.company.name} closes"
            action.company.close!
            return unless @game.unassociated_minors.include?(action.entity)

            bidbox_corporations = @game.bidbox_minors.map { |c| @game.corporation_from_company(c) }
            targets = @game.corporations.select { |c| @game.associated_minor?(c) && !c.owner && !bidbox_corporations.include?(c) }
            return if targets.empty?

            @new_associated_minor = action.entity
            @choices = {}
            targets.each do |t|
              @choices[t.name] = "Replace #{t.name} as associated minor for #{@game.major_name_for_associated_minor(t.id)}"
            end
          end

          attr_reader :choices

          def choice_name
            'Pick which associated minor to replace'
          end

          def process_choose(action)
            @log << "#{@new_associated_minor.name} replaces #{action.choice} as the associated minor " \
                    "for #{@game.major_name_for_associated_minor(action.choice)}"
            @game.replace_associated_minor(action.choice, @new_associated_minor.id)
            @log << "#{action.choice} is removed from the game"
            @game.corporations.delete(@game.corporation_by_id(action.choice))
            @game.companies.delete(@game.company_by_id(@game.company_id_from_corp_id(action.choice)))
            @choices = nil
          end
        end
      end
    end
  end
end
