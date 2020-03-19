class PollOption < ApplicationRecord
  extend Mobility
  validates :option, presence: true
  belongs_to :poll
  translates :option, locale_accessors: true, ransack: true
end
