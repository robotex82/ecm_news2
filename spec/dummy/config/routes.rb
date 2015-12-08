Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  Ecm::News::Routing.routes(self)

  root to: 'home#index'
end
