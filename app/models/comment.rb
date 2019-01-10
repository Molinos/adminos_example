class Comment < ApplicationRecord
  scope :sorted, -> { order(:created_at) }

  belongs_to :article

  validates :body, presence: true
end
