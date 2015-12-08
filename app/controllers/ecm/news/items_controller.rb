class Ecm::News::ItemsController < Ecm::Pictures::Configuration.base_controller.constantize
  def index
    @items = Ecm::News::Item.published.where(locale: I18n.locale.to_s).order('published_at DESC').page(params[:page]).per(5)
  end

  def show
    @item = Ecm::News::Item.published.where(locale: I18n.locale.to_s).find(params[:id])
  end
end
