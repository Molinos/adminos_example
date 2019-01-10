FactoryBot.define do
  factory :comment do
    article { nil }
    body { "MyText" }
  end
end
