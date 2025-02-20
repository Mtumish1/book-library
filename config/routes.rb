
# I think this where I define urls
# jesus take the wheel

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
end