FactoryGirl.define do
  factory :user do
    first_name { 'dante' }
    last_name { 'klein' }
    email_address { 'test@example.com' }
    phone_number { '0701234567' }
    username { 'kipkabus' }
    password_digest { '012345' }
  end
end
