Ecm::News::Engine.routes.draw do
  localized do
    resources :items, only: [:index, :show] do
      get 'page/:page', action: :index, on: :collection
    end
  end
end