FactoryBot.define do
  factory :poll_option do
    option { "MyString" }
    poll { nil }
  end
end
