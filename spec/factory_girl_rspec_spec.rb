require 'spec_helper'

describe FactoryBot::Rspec do
  describe '.with' do
    context 'with factory' do
      with :user
      it 'creates helper method' do
        expect(user).to_not be_nil
      end
    end
    context 'with traits' do
      with :user, :when_name_is_empty
      it 'creates helper method name with factory + traits' do
        expect(user_when_name_is_empty).to_not be_nil
        expect(user_when_name_is_empty.name).to be_nil
      end
    end
    context 'with overridden properties' do
      with :user, name: 'Bob'
      it 'configures instance with overridden properties' do
        expect(user.name).to eq 'Bob'
      end
    end
  end

  describe '.with!' do
    context 'with factory' do
      with! :user
      it 'creates helper method' do
        expect(user).to_not be_nil
      end
    end
    context 'with traits' do
      with! :user, :when_name_is_empty
      it 'creates helper method name with factory + traits' do
        expect(user_when_name_is_empty).to_not be_nil
        expect(user_when_name_is_empty.name).to be_nil
      end
    end
    context 'with overridden properties' do
      with! :user, name: 'Bob'
      it 'configures instance with overridden properties' do
        expect(user.name).to eq 'Bob'
      end
    end
  end

  describe FactoryBot::Syntax::Methods do
    context 'create' do
      it 'is available without FactoryBot prefix' do
        user = create :user
        expect(user).to_not be_nil
      end
    end
    context 'build' do
      it 'is available without FactoryBot prefix' do
        user = build :user
        expect(user).to_not be_nil
      end
    end
  end
end