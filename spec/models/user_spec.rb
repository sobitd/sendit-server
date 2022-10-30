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

  it 'email address must be unique' do
    User.new(username: 'example', email_address: 'example@gmail.com').save
    user2 = User.new(username: 'exam', email_address: 'example@gmail.com').save
    expect(user2).to eq(false)
  end

  it 'username must be unique' do
    User.new(username: 'example', email_address: 'example@gmail.com').save
    user2 = User.new(username: 'example', email_address: 'example@gmail.com').save
    expect(user2).to eq(false)
  end

  describe 'password_digest length' do
    it {
      should validate_length_of(:password_digest).is_at_least(8)
    }
  end

  it 'is not valid without a phone number' do
    subject.phone_number = nil
    expect(subject).to_not be_valid
  end

  it 'phone number must be 10 characters' do
    expect(subject.phone_number).to eq(10)
  end

  describe 'associations' do 
    it { expect(subject).to have_many(:parcels)}
  end
end
