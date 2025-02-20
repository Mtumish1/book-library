Rails.application.routes.draw do
  get "borrowings/create"
  get "borrowings/return_book"
  get "books/index"
  get "books/show"
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


Rails.application.routes.draw do
  devise_for :users
  
  root "books#index"

  resources :books, only: [:index, :show] do
    post "borrow", to: "borrowings#create"
    post "return", to: "borrowings#return_book"
  end

  resources :borrowings, only: [:index, :create] do
    member do
      patch :return_book
    end
end

# NOTES 
# books#index → Show all books.
# books#show → Show book details.
# borrowings #create → Borrow a book.
# borrowings #return_book → Return a book.
# borrowings #index → Show user's borrowed books.