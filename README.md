# factory_girl_rspec

[![Build Status](https://travis-ci.org/wireframe/factory_girl_rspec.png?branch=master)](https://travis-ci.org/wireframe/factory_girl_rspec)

Integrate FactoryGirl fixture initialization into the RSpec DSL.

## Features
* clean and concise DSL for instantiating FactoryGirl fixtures
* easily configure factory variations with FactoryGirl traits or optional parameter hash
* [includes FactoryGirl DSL into main Rspec context to DRY up creation](https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md#using-factories)

## Usage

Basic usage:

```ruby
# spec/models/user_spec.rb
describe User do
  context 'basic user' do
    # instantiate FactoryGirl :user fixture
    with :user
    it { user.should be_inactive }
    it { user.should_not be_happy }
  end
end
```

Advanced usage:

```ruby
# spec/models/user_spec.rb
describe User do
  context 'when user.first_name == nil' do
    # instantiate FactoryGirl :user fixture with custom options
    with :user, :first_name => nil
    it { user.should be_inactive }
    it { user.should_not be_happy }
  end

  context 'when user is inactive' do
    # instantiate FactoryGirl :user fixture with custom traits
    with :user, :when_inactive
    it { user_when_inactive.should be_inactive }
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

Original implementation described on [Ryan Sonnek's blog](http://blog.codecrate.com/2011/10/cleaner-rspecfactorygirl-integration.html)

See CONTRIBUTORS.txt for list of project contributors

## Copyright

Copyright (c) 2011 Ryan Sonnek
See LICENSE.txt for further details.
