Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'lists#home'

  resources :lists do
    resources :bookmarks, only: %i[new create]
    # [:new, :create]
  end

  resources :bookmarks, only: [:destroy]
end
