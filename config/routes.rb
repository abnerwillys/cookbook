Rails.application.routes.draw do
  # get '/', to: 'home#index'
  root        to: 'home#index'
  
  get '/ola', to: 'home#ola'
end
