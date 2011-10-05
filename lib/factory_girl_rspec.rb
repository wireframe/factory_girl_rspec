require 'factory_girl/rspec/with'
require 'rspec'

RSpec.configure do |config|
  config.extend FactoryGirl::Rspec::With
end
