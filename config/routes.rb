Rails.application.routes.draw do
  get 'books/new'
  post 'books', to: 'books#create'
  get 'users/update_information'

  get 'sessions/new'

  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/result',  to: 'static_pages#result'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  match '/users/:id/edit_information', to: "users#edit_information",
          as: :edit_information, via: [:get]

  # match '/users/:id/edit_information', to: "users#edit_information",
  #                 as: :edit_information, via: [:patch]
  resources :users
end
