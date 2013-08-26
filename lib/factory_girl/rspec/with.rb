require 'factory_girl'

module FactoryGirl
  module Rspec
    module With
      def with(name, options = {})
        let(name) { ::FactoryGirl.create(name, options) }
      end
      
      def with!(name, options = {})
        let!(name) { ::FactoryGirl.create(name, options) }
      end
    end
  end
end
