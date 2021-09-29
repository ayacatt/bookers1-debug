Rails.application.routes.draw do
  get 'books/new'
  root to: 'books#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  resources :books
end
