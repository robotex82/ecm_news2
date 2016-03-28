class Ecm::News::Item < ActiveRecord::Base
  # associations
  has_many :attached_pictures, as: :pictureable,
                               class_name: Ecm::Pictures::AttachedPicture,
                               dependent: :destroy
  has_many :pictures, through: :attached_pictures,
                      class_name: Ecm::Pictures::Picture

  accepts_nested_attributes_for :attached_pictures, allow_destroy: true
  accepts_nested_attributes_for :pictures, allow_destroy: true

  # acts as markup
  acts_as_markup language: :variable, columns: [:body]

  # acts as published
  include ActsAsPublished::ActiveRecord
  acts_as_published

  # attributes
  attr_accessible :attached_pictures_attributes,
                  :body,
                  :link_to_more,
                  :locale,
                  :markup_language,
                  :pictures_attributes,
                  :published,
                  :published_at,
                  :slug,
                  :title if respond_to?(:attr_accessible)

  # callbacks
  after_initialize :set_defaults

  # friendly id
  extend FriendlyId
  friendly_id :title, use: [:slugged]

  # validations
  validates :title, presence: true, uniqueness: true
  validates :locale, presence: true,
                     inclusion: I18n.available_locales.map(&:to_s)
  validates :body, presence: true
  validates :markup_language, presence: true,
                              inclusion: Ecm::News::Configuration.markup_languages.map(&:to_s)

  def human
    title
  end

  def preview_picture
    pictures.first
  end

  def to_s
    human
  end

  private

  def set_defaults
    if self.new_record?
      self.markup_language ||= Ecm::News::Configuration.default_markup_language
    end
  end
end
