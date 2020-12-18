FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    username { Faker::Internet.username(separators: ['']) }
    password { Faker::Internet.password(min_length: 10) }
  end
end
