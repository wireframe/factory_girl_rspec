require 'factory_girl/rspec/extended_dsl'
require 'rspec'

RSpec.configure do |config|
  config.extend FactoryGirl::Rspec::ExtendedDsl
end
