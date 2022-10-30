require 'rails_helper'

RSpec.describe Parcel, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:recipient_name) }
    it { is_expected.to validate_presence_of(:recipient_contact) }
    it { is_expected.to validate_presence_of(:recipient_address) }
    it { is_expected.to validate_presence_of(:weight) }
    it { is_expected.to validate_presence_of(:from) }
    it { is_expected.to validate_presence_of(:destination) }
  end

  it 'is not valid without a phone number' do
    subject.recipient_contact = nil
    expect(subject).to_not be_valid
  end

  it 'phone number must be 10 characters' do
    expect(subject.recipient_contact).to eq(10)
  end
end
