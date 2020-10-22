class User < ApplicationRecord
  include Clearance::User

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: { case_sensitive: true }

  def email_optional?
    true
  end

  def self.authenticate(username, password)
    return nil unless (user = find_by(username: username))
    return user if user.authenticated?(password)
  end
end
