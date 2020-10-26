class Nutrient < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id, inverse_of: :Nutrient

  validates :user_id, presence: true
end
