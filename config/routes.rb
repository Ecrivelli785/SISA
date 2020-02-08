Rails.application.routes.draw do

  root to: 'pages#home'
  get 'calendario', to: 'pages#calendario', as: :calendario
  resources :tecnicos
  resources :certificados
  resources :clientes
  get '/search' => 'pages#search', :as => 'search_page'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
