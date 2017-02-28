Rails.application.routes.draw do
  devise_for :chefs
  resources :cuisines do
    resources :recipes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
