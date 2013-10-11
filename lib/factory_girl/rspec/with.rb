require 'factory_girl'

module FactoryGirl
  module Rspec
    module With
      # define an rspec helper method that lazily creates the referenced
      # FactoryGirl fixture (via let)
      # example usage:
      #   with :user
      def with(*args)
        register_factory 'let', *args
      end

      # define an rspec helper method that eagerly creates the referenced
      # FactoryGirl fixture (via let!)
      # example usage:
      #   with! :user
      def with!(*args)
        register_factory 'let!', *args
      end

      private

      def register_factory(method_name, *args)
        variable_name = args.reject {|arg| arg.is_a?(Hash) }.join('_')
        send(method_name, variable_name) do
          ::FactoryGirl.create *args
        end
      end
    end
  end
end
