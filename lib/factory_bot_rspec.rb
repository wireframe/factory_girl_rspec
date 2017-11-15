require 'factory_bot/rspec/dsl'
require 'rspec'

RSpec.configure do |config|
  config.extend FactoryBot::Rspec::Dsl
  config.include FactoryBot::Syntax::Methods
end
