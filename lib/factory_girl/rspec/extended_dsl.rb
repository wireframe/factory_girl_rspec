require 'factory_girl'

module FactoryGirl
  module Rspec
    module ExtendedDsl
      def with(name, options = {}, &block)
        subject(name) { ::FactoryGirl.build(name, options, &block) }
      end
      
      def create(name, options = {}, &block)
        subject(name) { ::FactoryGirl.create(name, options, &block) }
      end 
    end
  end
end
