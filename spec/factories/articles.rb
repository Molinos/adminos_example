FactoryBot.define do
  factory :article do
    title { "MyString" }
    publish_at { "2019-01-10" }
    tags { "MyText" }
    user { nil }
  end
end
