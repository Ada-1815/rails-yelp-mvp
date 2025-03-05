Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # voir la liste des restaurants GET "restaurants"
get "restaurants", to: "restaurants#index"

  # ajouter un nveau restaurant GET "restaurants/new" + POST "restaurants"
  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "restaurants", to: "restaurants#create"

  # voir les détails d'un restaurant GET "restaurants/38"

  # user ajoute un nouvel avis GET "restaurants/38/reviews/new" + POST "restaurants/38/reviews"
end
