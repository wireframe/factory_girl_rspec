# factory_girl_rspec

Integrate FactoryGirl fixture initialization into the RSpec DSL.

## Usage

```ruby 
# spec/factories/user_factory.rb
Factory.define :user do |f|
  f.email 'john@acme.com'
  f.first_name "John"
  f.last_name "Doe"
  f.phone_number '555.5555'
end
```

```ruby
# spec/models/user_spec.rb
describe User do
  context 'basic user' do
    with :user
    it { user.should be_inactive }
    it { user.should_not be_happy }
  end
end
```

## Installation

```ruby
# Bundler Gemfile
gem 'factory_girl_rspec'
```

## Contributing
 
* Fork the project
* Fix the issue
* Add unit tests
* Submit pull request on github

See CONTRIBUTORS.txt for list of project contributors

## Copyright

Copyright (c) 2011 Ryan Sonnek
See LICENSE.txt for further details.
