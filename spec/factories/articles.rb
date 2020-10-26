FactoryBot.define do
  factory :article do
    user { nil }
    title { "MyString" }
    text { "MyText" }
    image { "MyString" }
  end
end
