Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :restaurants

  get "restaurants", to: "restaurants#index", as: "restaurants"

  get "restaurants/new", to: "restaurants#new", as: "new_restaurant"
  post "restaurants", to: "restaurants#create"

  get "restaurants/:id", to: "restaurants#show", as: "restaurant"

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

  # get "restaurants/:id/reviews/new", to: "reviews#new", as: "new_review"
  # post "restaurants/:id/reviews", to: "reviews#create", as: "reviews"

end
