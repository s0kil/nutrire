class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :nutrient

  validates :user_id, presence: true
  validates :nutrient_id, presence: true

  scope :nutrient_id_with_most_votes, lambda {
    select('nutrient_id, count(nutrient_id) as count')
      .group(:nutrient_id)
      .order('count desc')
      .limit(1)
      .first
      .nutrient_id
  }
end
