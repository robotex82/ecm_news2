Ecm::News::Engine.routes.draw do
  localized do
    scope :ecm_news_engine do
      resources :items, only: [:index, :show] do
        get 'page/:page', action: :index, on: :collection
      end
      root to: 'items#index'
    end
  end
end
