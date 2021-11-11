# frozen_string_literal: true

module ActiveRecord
  module ConnectionAdapters
    module Clickhouse
      module OID # :nodoc:
        class Enum < Type::String # :nodoc:
          def type
            :enum
          end

          private

          def cast_value(value)
            value.to_s
          end
        end
      end
    end
  end
end