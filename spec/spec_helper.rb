require 'factory_bot_rspec'
require 'models/user'

FactoryBot.find_definitions

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'
end
