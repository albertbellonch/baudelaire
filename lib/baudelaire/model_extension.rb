require 'active_support/concern'

module Baudelaire
  module ModelExtension
    extend ActiveSupport::Concern

    module ClassMethods
      def symbolize(*fields)
        fields.each do |field|
          define_method(:"#{field}=") do |value|
            value = value.to_sym if value
            self[field] = value
          end

          define_method(:"#{field}") do
            value = self[field]
            value = value.to_sym if value
            value
          end
        end
      end
    end
  end
end
