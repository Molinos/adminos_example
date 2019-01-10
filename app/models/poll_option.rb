class PollOption < ApplicationRecord
  validates :option, presence: true

  belongs_to :poll
end
