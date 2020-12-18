class Nutrient < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id, inverse_of: :nutrients
  belongs_to :category

  has_many :votes, dependent: :nullify

  validates :title, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true

  has_rich_text :text
  mount_uploader :image, CoverArtUploader
end
