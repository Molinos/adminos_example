include ActionDispatch::TestProcess

FactoryBot.define do
  factory :article do
    name { FFaker::LoremRU.phrase }
    title { FFaker::LoremRU.sentence }
    publish_at { FFaker::Time.between(Date.current - 3.month, Date.current) }
    content { FFaker::LoremRU.paragraph }
    tags { FFaker::Tweet.tags(rand(1..5)) }
    user { User.order("random()").last }
    cover { fixture_file_upload(FFaker::Image.file) }
  end
end
