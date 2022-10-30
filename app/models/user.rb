class User < ApplicationRecord
  has_many :parcels, dependent: :destroy
  validates :first_name, :last_name, :email_address, :username, :password_digest,
            presence: true

  validates :email_address, uniqueness: true
  REGEX = /A\(?[\d]{3}\)?[\s|-]?[\d]{3}-?[\d]{4}Z/
  validates :phone_number, presence: true, length: { is: 10 }, format: { with: REGEX }
  validates :username, presence: true, uniqueness: true
  validates :password_digest, length: { minimum: 8 }, presence: true
end
