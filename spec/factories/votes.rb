FactoryBot.define do
  factory :vote do
    user { create(:user) }
    nutrient { create(:nutrient) }
  end
end
