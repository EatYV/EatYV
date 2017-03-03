Rails.application.routes.draw do
  devise_for :chefs
  resources :cuisines do
    resources :recipes
  end

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
