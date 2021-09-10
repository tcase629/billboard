Rails.application.routes.draw do

  get 'songs/index'
  get 'songs/new'
  get 'songs/create'
  get 'songs/update'
  get 'artists/index'
  get 'artists/new'
  get 'artists/create'
  get 'artists/update'
  root 'playlists#index'
  #resources :controller_name
  resources :playlists do
    resources :artists
  end

  resources :artists do
    resources :songs
  end
end


  # resources :parent_controller do
  #  resources :child_controller
      
  # end


  # resources :zoos do
  #   resources :exhibits 
  # end

  # resources :exhibits do
  #   resources :animals
  #   resources :stores
  # end

  # localhost:3000/exhi
  # localhost:3000/exhibits/1/stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
