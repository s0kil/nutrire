FactoryBot.define do
  factory :nutrient do
    author { create(:user) }
    category { create(:category) }

    title { 'Oh What An Amazing Nutrient' }
    text { 'This nutrient is great for the weekend' }
  end
end
