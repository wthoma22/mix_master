Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists do
    resources :songs, only: [:new, :create]
  end

  resources :songs, only: [:show]
  resources :playlists, only: [:index, :new, :create, :show]
end
