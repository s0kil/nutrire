class User < ApplicationRecord
  include Clearance::User

  has_many :nutrients, dependent: :nullify
  has_many :votes, dependent: :nullify

  validates :name, presence: true
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: { case_sensitive: true }

  def self.authenticate(username, password)
    return nil unless (user = find_by(username: username))
    return user if user.authenticated?(password)
  end
end
