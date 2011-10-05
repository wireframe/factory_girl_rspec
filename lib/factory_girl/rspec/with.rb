require 'factory_girl'

module FactoryGirl
  module Rspec
    module With
      def with(name, options = {})
        let(name) { ::Factory.create(name, options) }
      end
    end
  end
end
