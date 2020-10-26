class Article < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id, inverse_of: :articles

  validates :user_id, presence: true
end
