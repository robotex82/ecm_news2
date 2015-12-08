require 'rails_helper'

describe 'home/index' do
  before(:each) { FactoryGirl.create_list(:ecm_news_item, 5, locale: I18n.locale) }

  it 'renders _item_for_render_news partial for the correct news item count' do
    render
    expect(view).to render_template(partial: '_item_for_render_news', count: 2)
  end
end
