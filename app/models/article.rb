class Article < ApplicationRecord
  include Adminos::Slugged
  include Adminos::FlagAttrs
  include Adminos::Recognizable
  include Adminos::NestedSet::Duplication
  belongs_to :user
  has_paper_trail
  slugged :recognizable_name
  flag_attrs :published
  acts_as_recognizable :recognizable_name

  validates :name, presence: true

  scope :sorted, -> { order('created_at DESC') }

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
