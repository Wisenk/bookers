Rails.application.routes.draw do
  get '/bookers' => 'homes#top'

  get '/bookers/books' => 'books#new', as: 'newbook'
  post 'newbook' => 'books#new'
  get 'bookers/books/:id' => 'books#show', as: 'book'

  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  post 'edit_book' => 'books#edit'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'bookers/books/:id' => 'books#destroy', as: 'destroy_book'


  post 'books' => 'books#create'
  get 'books' => 'books#index'
  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
