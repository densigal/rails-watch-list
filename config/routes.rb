Rails.application.routes.draw do
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'lists', to: 'lists#index', as: :lists
  # get 'lists/new', to: 'lists#new', as: :new_list
  # get 'lists/:id', to: 'lists#show', as: :list
  # post 'lists', to: 'lists#create'

  # get 'lists/:list_id/bookmark/new', to: 'bookmarks#new', as: :new_list_bookmark
  # post 'lists/:list_id/bookmarks', to: 'bookmarks#create', as: :list_bookmarks
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy

end
