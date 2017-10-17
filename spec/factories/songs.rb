FactoryGirl.define do
  factory :song do
    name     { Faker::Beer.name }
    year     { Faker::Number.number(4) }
    album    { Faker::Pokemon.name }
  end
end
