Rails.application.routes.draw do
  get 'movies/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, except: [ :update, :edit ] do
    resources :bookmarks, only: [ :new, :create ]
  end
    resources :bookmarks, only: [ :destroy ]
    resources :movies, only: [ :index, :update ]
end
