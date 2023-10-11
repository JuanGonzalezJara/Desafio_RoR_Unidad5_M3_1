Rails.application.routes.draw do
  get "documentaryfilm/index"
  get "documentaryfilm/create"
  get "documentaryfilm/new"
  get "series/index"
  get "series/create"
  get "series/new"
  get "movies/index"
  get "movies/create"
  get "movies/new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post "movies/new", to: "movies#create", as: "movies_new_post"
  post "series/new", to: "series#create", as: "series_new_post"
  post "documentary_film/new", to: "documentary_film#create", as: "documentary_film_new_post"

  # Defines the root path route ("/")
  root "movies#index"
end
