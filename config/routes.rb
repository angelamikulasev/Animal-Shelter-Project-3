Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, except: [:index]

  # resource :user do
  #   collection do
  #     get :history
  #   end
  # end

  resources :categories
  resource :session, only: [:new, :create, :destroy]

  resources :animals, except: [:destroy] do
    member do
      patch 'adopt'
    end

    collection do
      get 'waiting_for_adoption', :path => 'waiting-for-adoption'
    end
  end

   get '/about' => 'pages#about'
   get '/faq' => 'pages#faq'
   get '/contact' => 'pages#contact'
   get '/pawswalk' => 'pages#pawswalk'
   get '/info' => 'pages#info'
end
