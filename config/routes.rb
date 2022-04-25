Rails.application.routes.draw do
  root to: 'home#index'

  resources :recipes, only: [:show, :create, :new, :edit, :update] do
    # /publish é o caminho relativo, e colocando "on: :member" informamos que é um membro da rota pai, que também depende do id da receita.
    # Formato final da rota /recipes/:id/publish
    patch :publish, on: :member 
  end

  resources :recipe_types, only: [:create, :new]
end
