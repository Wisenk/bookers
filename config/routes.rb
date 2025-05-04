Rails.application.routes.draw do
  get '/bookers' => 'homes#top'
  resources :books

  get '/bookers/books' => 'books#new', as: 'newbook'
  post 'newbook' => 'books#new'
  get 'bookers/books/:id' => 'books#show', as: 'bookshow'

  get 'books/:id/edit' => 'books#edit', as: 'bookedit'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'bookdestroy'


  post 'books' => 'books#create'
  get 'books' => 'books#index'
  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
