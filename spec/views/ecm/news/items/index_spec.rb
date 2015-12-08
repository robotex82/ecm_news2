require 'rails_helper'

describe 'ecm/news/items/index' do
  before do
    @items = FactoryGirl.create_list(:ecm_news_item, 3, locale: I18n.locale)

    assign(:items, Kaminari.paginate_array(@items).page(1))

    render
  end

  it 'renders _item_for_preview partial for each news item' do
    expect(view).to render_template(partial: '_item_in_list', count: 3)
  end

  it 'shows headings for all items' do
    @items.each do |i|
      expect(rendered).to have_selector('h3', text: i.title)
    end
  end

  it 'shows links to all items' do
    @items.each do |i|
      expect(rendered).to have_xpath("//a[@href='/ecm_news_items/#{i.to_param}']")
    end
  end
end
