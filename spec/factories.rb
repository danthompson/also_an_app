FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "bob#{n}" }
  end
end
