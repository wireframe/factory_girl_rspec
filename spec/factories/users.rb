FactoryGirl.define do
  factory :user do
    name 'John Doe'

    trait :when_name_is_empty do
      name nil
    end

  end
end