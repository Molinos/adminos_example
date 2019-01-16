FactoryBot.define do
  factory :user do
    email { FFaker::Internet.safe_email }
    password { FFaker::Internet.password }
  end
end
