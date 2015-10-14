require 'rails_helper'

module Ecm
  module News
    describe ItemsController do
      before(:all) do
        I18n.locale = :en
      end

      describe "GET index" do
        it "assigns all ecm_news_items to @items" do
          item = FactoryGirl.create(:ecm_news_item, :locale => I18n.locale.to_s)
          get :index
          expect(assigns(:items)).to eq([item])
        end
      end

      describe "GET show" do
        it "assigns a ecm_news_item to @item" do
          item = FactoryGirl.create(:ecm_news_item, :locale => I18n.locale.to_s)
          get :show, :id => item
          expect(assigns(:item)).to eq(item)
        end
      end
    end
  end
end
