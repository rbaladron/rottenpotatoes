Rails.application.routes.draw do
  root 'movies#index'
  resources :movies
  root :to => redirect('movies')
end
