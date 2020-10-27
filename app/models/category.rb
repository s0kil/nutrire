class Category < ApplicationRecord
  has_many :nutrients, dependent: :nullify # Do Not Delete The Nutrients

  validates :title, presence: true, uniqueness: true
end
