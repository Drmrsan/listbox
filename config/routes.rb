Rails.application.routes.draw do
  devise_for :users
  
  resources :lists do
  	resources :list_items
  end

  root 'lists#index'
end
