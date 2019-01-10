class Poll < ApplicationRecord
  include Adminos::Slugged
  include Adminos::FlagAttrs
  include Adminos::Recognizable
  include Adminos::NestedSet::Duplication

  scope :sorted, -> { order('created_at DESC') }
  validates :name, presence: true

  has_many :poll_options, dependent: :destroy

  accepts_nested_attributes_for :poll_options, reject_if: :all_blank, allow_destroy: true

  has_paper_trail
  slugged :recognizable_name
  flag_attrs :published
  acts_as_recognizable :recognizable_name

  def reasonable_name
    if self.respond_to?(:translations)
      name.presence || translations.detect { |t| t.name.present? }.try(:name)
    else
      name
    end
  end

  def recognizable_name
    slug.present? ? slug : reasonable_name
  end
end
