# frozen_string_literal: true

require_relative 'base'

module Engine
  module Ability
    class BlocksHexesConsent < Base
      attr_reader :hexes

      def setup(hexes:)
        @hexes = hexes
      end
    end
  end
end
