FactoryGirl.define do
  factory :artist do
    name   { Faker::GameOfThrones.character }
  end
end
