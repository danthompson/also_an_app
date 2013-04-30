FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "bob#{n}" }
  end
  factory :post do
    sequence(:body) { |n| "Now is the time for all #{n}..." }
    user
  end
end
