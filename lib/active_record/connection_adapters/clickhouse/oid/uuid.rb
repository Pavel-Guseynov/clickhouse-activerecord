# frozen_string_literal: true

module ActiveRecord
  module ConnectionAdapters
    module Clickhouse
      module OID # :nodoc:
        class Uuid < Type::Value # :nodoc:

          def type
            :uuid
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
