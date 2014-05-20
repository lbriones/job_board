class Company < ActiveRecord::Base
  has_many :posts
  has_secure_password

  validates :name, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :password, length: { minimum: 6 }, if: -> { password.present? }
end
