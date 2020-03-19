class Feature < ApplicationRecord
  include Adminos::Slugged
  include Adminos::FlagAttrs
  include Adminos::Recognizable
  include Adminos::NestedSet::PlaceTo
  include Adminos::NestedSet::SafeDestroy
  include Adminos::NestedSet::Duplication
  extend Mobility

  scope :sorted, -> { order('lft ASC') }

  validates :name, presence: true

  after_save :update_descendants_states

  I18n.available_locales.each do |locale|
    has_rich_text "content_#{locale}".to_sym
  end

  paginates_per 10
  has_paper_trail
  slugged :recognizable_name
  flag_attrs :published
  acts_as_nested_set
  acts_as_recognizable :recognizable_name
  translates :name, locale_accessors: true, ransack: true

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

  def update_descendants_states
    if saved_change_to_published? && !published?
      self.class.unscoped.where(parent_id: id).set_each_published_off
    end
  end

  alias_method :destroy_orig, :destroy
  def destroy
    safe_destroy(children_to: :parent, without_destroy: true)
    destroy_orig
  end
end
