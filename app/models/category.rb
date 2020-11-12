class Category < ApplicationRecord
  has_many :nutrients, dependent: :nullify

  validates :title, presence: true, uniqueness: true
  validates :priority, presence: true
end
