Rails.application.routes.draw do
    root "artists#index"

    resources :artists do
      resources :songs
    end

    resources :photos

    namespace :api do
      resources :artists do
        resources :songs, only: [:create, :update, :destroy]
    end
  end
end

#  get "artists" => "artists#index"
#  get "artists/new" => "artists#new", as: :new_artist
#  get "artists/:id" => "artists#show", as: :artist

#  post "artists" => "artists#create"
#  get "artists/:id/edit" => "artists#edit", as: :edit_artist

#  patch "artists/:id" => "artists#update"
#  delete "artists/:id" => "artists#destroy"
