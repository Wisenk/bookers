Rails.application.routes.draw do
  get '/bookers' => 'homes#top'
  get '/bookers/books' => 'books#new', as: 'newbook'
  post 'newbook' => 'books#new'


  post 'books' => 'books#create'
  get 'books' => 'books#index'
  
  get 'bookers/books/:id' => 'books#show', as: 'book'
  get 'books/edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
