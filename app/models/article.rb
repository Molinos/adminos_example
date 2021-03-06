class Article < ApplicationRecord
  include Adminos::Slugged
  include Adminos::FlagAttrs
  include Adminos::Recognizable
  include Adminos::NestedSet::Duplication
  include Adminos::Cropped
  extend Mobility

  scope :sorted, -> { order(created_at: :desc) }
  scope :sort_by_publish_at, -> { order(publish_at: :desc) }

  paginates_per 10

  I18n.available_locales.each do |locale|
    has_rich_text "content_#{locale}".to_sym
  end

  has_one_attached :cover

  cropped :cover, version: :default, coord_attribute: :cover_coord
  cropped :cover, version: :mobile, coord_attribute: :cover_mobile_coord

  belongs_to :user

  has_many :comments, dependent: :destroy

  has_paper_trail
  slugged :recognizable_name
  flag_attrs :published
  acts_as_recognizable :recognizable_name

  validates :name, presence: true

  scoped_search on: :name

  translates :name, :title, locale_accessors: true, ransack: true

  def content
    send("content_#{I18n.locale}")
  end

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
