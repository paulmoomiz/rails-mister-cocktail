Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "cocktails", to: "cocktails#index"

  root 'cocktails#index'

  # get "cocktails/new", to: "cocktails#new", as: "new_cocktail"
  # post "cocktails",to: "cocktails#create"

  # get "cocktails/:id", to: "cocktails#show", as: "cocktail"
  # For doses

  # get "cocktails/42/doses/new"
  # post "cocktails/42/doses"
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
   # delete "doses/25"
  resources :doses, only: [:destroy]
end
