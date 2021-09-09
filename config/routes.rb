Rails.application.routes.draw do
  root 'playlists#index'
  
  resources :playlists do
    resources :artists
  end

  resources :artists do
    resources :songs
  end
end
