FactoryBot.define do
  factory :topic do
    name { Faker::Name.name }
    campaign { association :campaign }
  end
end
