require 'rails_helper'

module Ecm::News
  describe Item do
    subject { FactoryGirl.build(:ecm_news_item) }

    describe 'associations' do
      it { should have_many :attached_pictures }
      it { should have_many :pictures }
    end # describe 'associations'

    # callbacks
    context 'sets default handler' do
      subject { Ecm::News::Item.new }
      it { expect(subject.markup_language).to eq(Ecm::News::Configuration.default_markup_language.to_s) }
    end

    # friendly id
    it "should have a friendly id" do
      item = FactoryGirl.create(:ecm_news_item, :title => 'This is an item that should have a friendly id!')
      expect(item.to_param).to eq('this-is-an-item-that-should-have-a-friendly-id')
    end

    # validations
    it { should validate_presence_of(:title) }
    it "should only accept unique titles" do
      FactoryGirl.create(:ecm_news_item)
      expect(Ecm::News::Item.new).to validate_uniqueness_of( :title )
    end


    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:locale) }
    it { should validate_inclusion_of(:locale).in_array(I18n.available_locales.map(&:to_s)) }
    it { should validate_presence_of(:markup_language) }
    it { should validate_inclusion_of(:markup_language).in_array(Ecm::News::Configuration.markup_languages.map(&:to_s)) }

  end
end

