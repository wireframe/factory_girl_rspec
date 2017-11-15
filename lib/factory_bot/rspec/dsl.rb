require 'factory_bot'

module FactoryBot
  module Rspec
    module Dsl
      # define an rspec helper method that lazily creates the referenced
      # FactoryBot fixture (via let)
      # example usage:
      #   with :user
      def with(*args)
        register_factory 'let', *args
      end

      # define an rspec helper method that eagerly creates the referenced
      # FactoryBot fixture (via let!)
      # example usage:
      #   with! :user
      def with!(*args)
        register_factory 'let!', *args
      end

      private

      def register_factory(method_name, *args)
        variable_name = args.reject {|arg| arg.is_a?(Hash) }.join('_')
        send(method_name, variable_name) do
          ::FactoryBot.create *args
        end
      end
    end
  end
end
