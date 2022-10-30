class Parcel < ApplicationRecord
  belongs_to :user

  validates :recipient_name, :recipient_contact, :recipient_address, :weight, :from, :destination, presence: true
  REGEX = /A\(?[\d]{3}\)?[\s|-]?[\d]{3}-?[\d]{4}Z/
  validates :recipient_contact, presence: true, length: { is: 10 }, format: { with: REGEX }
end
