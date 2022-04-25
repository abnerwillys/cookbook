Rails.application.routes.draw do
  root to: 'home#index'

  resources :recipes, only: [:show, :create, :new, :edit, :update]
  resources :recipe_types, only: [:create, :new]
end
