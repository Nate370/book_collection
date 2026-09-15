Rails.application.routes.draw do
  root "user_books#index"

  resources :user_books
  resources :users

  resources :home, only: [:index], as: :books
  resources :add_books, only: [:new, :create]
  resources :update_books, only: [:edit, :update]
  resources :show_details, only: [:show]
  resources :delete_books do
    member do
      get :delete
    end
  end
  # get "delete_books/index"
  # get "show_details/index"
  # get "update_books/index"
  # get "add_books/index"
  # get "home/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
