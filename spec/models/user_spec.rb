require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email_address) }
    it { is_expected.to validate_presence_of(:phone_number) }
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:password_digest) }
  end

  it 'is invalid with an alternate phone number that is also that user\'s primary phone' do
    expect(FactoryGirl.build(:user, phone_number: '123-456-7890').save).to be_falsey
  end
end
