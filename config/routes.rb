Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # syntax generic
  # VERB "path", to: "controller#action"

  # Afficher tous les restaurants

  get 'restaurants', to: 'restaurants#index'

  # afficer un formulaire

  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # Créer un restaurant
  post "restaurants", to: "restaurants#create"

  # Afficher un restaurant /restaurants/42 => params[:id] => "42"
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant


  # Editer un restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch 'restaurants/:id', to: 'restaurants#update'

  # Supprimer un restaurant

  delete 'restaurants/:id', to: 'restaurants#destroy'

  # resources :restaurants
end
