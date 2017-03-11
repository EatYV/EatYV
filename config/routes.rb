Rails.application.routes.draw do
  devise_for :users
  devise_for :chefs
  resources :cuisines do
    resources :recipes
    resources :reservations
    resources :reviews
  end

  resources :authentication

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
