class User < ApplicationRecord
  ## the macro to encrypt users passwords
  has_secure_password
  has_many :parcels, dependent: :destroy
  # belongs_to :order, optional: true

  validates_presence_of :first_name, :last_name, :phone_number, :username, 
  #validates :email_address, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  number_regex = /\d[0-9]\)*\z/
  validates_format_of :phone_number, with: number_regex
  validates :email_address, uniqueness: true
  #REGEX = /A\(?[\d]{3}\)?[\s|-]?[\d]{3}-?[\d]{4}Z/
  validates :phone_number, presence: true, length: { is: 10 }
  validates :username, presence: true, uniqueness: true
  validates :password_digest, length: { minimum: 8 }, presence: true
end
