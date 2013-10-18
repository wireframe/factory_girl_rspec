require 'factory_girl/rspec/dsl'
require 'rspec'

RSpec.configure do |config|
  config.extend FactoryGirl::Rspec::Dsl
  config.include FactoryGirl::Syntax::Methods
end
