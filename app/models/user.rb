class User < ApplicationRecord
  has_many :parcels, dependent: :destroy
  validates :first_name, :last_name, :email_address, :username, :password_digest, :isAdmin,
            presence: true

  REGEX_PATTERN = /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$/

  validates :email_address, uniqueness: true, with: REGEX_PATTERN
  validates :phone_number, presence: true, length: { minimum: 10 }
  validates :username, presence: true, uniqueness: true
  validates :password_digest, length: { minimum: 8 }, presence: true
end
