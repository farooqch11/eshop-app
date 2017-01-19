Rails.application.routes.draw do
  resources :orders
  root :to => 'home#welcome'

  # devise_for :users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)


  devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
