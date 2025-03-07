# frozen_string_literal: true

module Engine
  module Game
    module G18NewEnglandNorth
      module Entities
        CORPORATIONS = [
          # Share Corporations
          {
            sym: 'B&A',
            name: 'Boston and Albany Railroad',
            logo: '18_new_england/BA',
            simple_logo: '18_new_england/BA.alt',
            type: 'major',
            color: '#ec1c24',
            tokens: [0, 40, 80],
            float_percent: 20,
            max_ownership_percent: 60,
          },
          {
            sym: 'B&M',
            name: 'Boston and Maine Railroad',
            logo: '18_new_england/BM',
            simple_logo: '18_new_england/BM.alt',
            type: 'major',
            color: '#84c77a',
            text_color: 'black',
            tokens: [0, 40, 80],
            float_percent: 20,
            max_ownership_percent: 60,
          },
          {
            sym: 'CN',
            name: 'Canadian National Railroad',
            logo: '18_new_england/CN',
            simple_logo: '18_new_england/CN.alt',
            type: 'major',
            color: '#ffd900',
            text_color: 'black',
            tokens: [0, 40, 80],
            float_percent: 20,
            max_ownership_percent: 60,
          },
          {
            sym: 'CVT',
            name: 'Central Vermont Railroad',
            logo: '18_new_england/CVT',
            simple_logo: '18_new_england/CVT.alt',
            type: 'major',
            color: '#b43e95',
            tokens: [0, 40, 80],
            float_percent: 20,
            max_ownership_percent: 60,
          },
          {
            sym: 'BAR',
            name: 'Bangor and Aroostook Railroad',
            logo: '18_new_england_north/BAR',
            simple_logo: '18_new_england_north/BAR.alt',
            type: 'major',
            color: '#0b86c8',
            text_color: 'yellow',

            tokens: [0, 40, 80],
            float_percent: 20,
            max_ownership_percent: 60,
          },
          {
            sym: 'R',
            name: 'Rutland Railroad',
            logo: '18_new_england_north/R',
            simple_logo: '18_new_england_north/R.alt',
            type: 'major',
            color: '#ffffd5',
            text_color: 'green',

            tokens: [0, 40, 80],
            float_percent: 20,
            max_ownership_percent: 60,
          },
          {
            sym: 'NYNHH',
            name: 'New York, New Haven and Hartford Railroad',
            logo: '18_new_england/NYNHH',
            simple_logo: '18_new_england/NYNHH.alt',
            type: 'major',
            color: '#f68e1e',
            text_color: 'black',

            tokens: [0, 40, 80],
            float_percent: 20,
            max_ownership_percent: 60,
          },
          {
            sym: 'MEC',
            name: 'Maine Central Railroad Company',
            logo: '18_new_england_north/MEC',
            simple_logo: '18_new_england_north/MEC.alt',
            type: 'major',
            color: '#08944b',
            tokens: [0, 40, 80],
            float_percent: 20,
            max_ownership_percent: 60,
          },
          # Minor Corporations
          {
            sym: 'ML',
            name: 'Manchester and Lawrence Railroad',
            coordinates: 'H11',
            logo: '18_new_england_north/ML',
            color: '#f05f72',
            text_color: 'white',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
          },
          {
            sym: 'MC',
            name: 'Maine Central Railroad Company',
            coordinates: 'A22',
            logo: '18_new_england_north/MC',
            color: '#fbb116',
            text_color: 'black',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
          {
            sym: 'CP',
            name: 'Connecticut and Passumpsic Rivers Railroad',
            coordinates: 'C8',
            logo: '18_new_england_north/CP',
            color: '#b94e27',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
          {
            sym: 'K&P',
            name: 'Kennebec & Portland Railroad',
            coordinates: 'C18',
            logo: '18_new_england_north/KP',
            color: '#584232',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
          },

          {
            sym: 'VC',
            name: 'Vermont Central Railroad',
            coordinates: 'D5',
            logo: '18_new_england_north/VC',
            color: '#e5df17',
            text_color: 'black',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
          {
            sym: 'AK',
            name: 'Androscoggin and Kennebec Railroad',
            coordinates: 'D17',
            logo: '18_new_england_north/AK',
            color: '#2ab24b',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
          {
            sym: 'P&R',
            name: 'Portland & Rochester Railroad',
            coordinates: 'E16',
            logo: '18_new_england_north/PR',
            color: '#b43e95',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
          {
            sym: 'RW',
            name: 'Rutland and Washington Railroad',
            coordinates: 'F3',
            logo: '18_new_england_north/RW',
            color: '#09743b',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
          {
            sym: 'BCM',
            name: 'Boston, Concord & Montreal Railroad',
            coordinates: 'F9',
            logo: '18_new_england_north/BCM',
            color: '#ec2785',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
          {
            sym: 'CC',
            name: 'Concord and Claremont Railroad',
            coordinates: 'G10',
            logo: '18_new_england_north/CC',
            color: '#3b60ab',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
          {
            sym: 'PSP',
            name: 'Portland, Saco and Portsmouth Railroad',
            coordinates: 'G14',
            logo: '18_new_england_north/PSP',
            color: '#6dcef5',
            text_color: 'black',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
          {
            sym: 'BR',
            name: 'Bennington & Rutland Railroad',
            coordinates: 'H3',
            logo: '18_new_england_north/BR',
            color: '#cf6d28',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
          {
            sym: 'RB',
            name: 'Rutland & Burlington Railroad',
            coordinates: 'C2',
            logo: '18_new_england_north/RB',
            color: '#ec1e29',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
          {
            sym: 'PC',
            name: 'Portsmouth and Concord Railroad',
            coordinates: 'H13',
            logo: '18_new_england_north/PC',
            color: '#bdaf32',
            text_color: 'black',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
          {
            sym: 'VV',
            name: 'Vermont Valley Railroad',
            coordinates: 'I6',
            logo: '18_new_england_north/VV',
            color: 'black',
            tokens: [0],
            float_percent: 100,
            max_ownership_percent: 100,
            shares: [100],
            type: 'minor',
            capitalization: :incremental,
            reservation_color: nil,
          },
        ].freeze

        MINORS = [
          {
            sym: 'Y',
            name: 'Yellow Dummy',
            logo: '18_new_england/YELLOW',
            color: 'yellow',
            tokens: [0],
          },
          {
            sym: 'G',
            name: 'Green Dummy',
            logo: '18_new_england/GREEN',
            color: 'green',
            tokens: [0],
          },
          {
            sym: 'C',
            name: 'Closed Dummy',
            logo: '18_new_england/CLOSED',
            color: 'black',
            tokens: [0],
          },
        ].freeze
      end
    end
  end
end
