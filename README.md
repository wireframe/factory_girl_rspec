# factory_girl_rspec

Integrate FactoryGirl fixture initialization into the RSpec DSL.

## Usage

Basic usage:

```ruby
# spec/models/user_spec.rb
describe User do
  context 'when basic user' do
    # instantiate FactoryGirl :user factory
    with :user
    it { should be_inactive }
    it { should_not be_happy }
    it 'has a first name' do
    	user.first_name.should_not be_nil
    end 
  end
  
  context 'when invalid user' do
  	# instantiate FactoryGirl :invalid_user factory
  	with :invalid_user
    it { should be_invalid }
    its(:first_name) { should be_nil }
  end
end
```

By default, `factory_girl_rspec` uses `FactoryGirl.build` to make objects without saving them to the database. 
If you would like to explicitly save your objects to the database, you can use the `create` method.

Advanced usage:

```ruby
# spec/models/user_spec.rb
describe User do
  context 'when user.first_name == nil' do
    # instantiate FactoryGirl :user factory with custom options
    with :user, :first_name => nil
    it { should be_inactive }
    it { should_not be_happy }
    
    # create FactoryGirl :user factory with custom options
    # you can also pass in a block to any factory_girl_rspec methods, like with FactoryGirl 
    create :user, :first_name => "Ryan" do |user|
  	  user.posts.create(attributes_for(:post))
	end
	its(:first_name) { should eq("Ryan") }
  end
end
```

## Features
* clean and concise DSL for instantiating FactoryGirl fixtures
* easily configure deviations in fixtures with optional parameter hash

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
