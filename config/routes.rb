Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists, only: [:create, :new, :update, :show, :edit, :index]
  resources :songs, only: [:create, :new, :update, :show, :edit, :index]
  resources :genres, only: [:create, :new, :update, :show, :edit, :index]
end
