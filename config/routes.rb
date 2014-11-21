Rails.application.routes.draw do
   root :to => 'pages#home'

   resources :users, only: [:new, :create, :destroy, :edit, :update, :show]
   resources :animals, only: [:index, :show]
   resources :categories
   resources :sessions, only: [:new, :create, :destroy]

   get '/about' => 'pages#about'
   get '/faq' => 'pages#faq'
   get '/contact' => 'pages#contact'
end
