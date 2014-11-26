# == Route Map
#
#                       Prefix Verb   URI Pattern                             Controller#Action
#                         root GET    /                                       pages#home
#                        users POST   /users(.:format)                        users#create
#                     new_user GET    /users/new(.:format)                    users#new
#                    edit_user GET    /users/:id/edit(.:format)               users#edit
#                         user GET    /users/:id(.:format)                    users#show
#                              PATCH  /users/:id(.:format)                    users#update
#                              PUT    /users/:id(.:format)                    users#update
#                              DELETE /users/:id(.:format)                    users#destroy
#                   categories GET    /categories(.:format)                   categories#index
#                              POST   /categories(.:format)                   categories#create
#                 new_category GET    /categories/new(.:format)               categories#new
#                edit_category GET    /categories/:id/edit(.:format)          categories#edit
#                     category GET    /categories/:id(.:format)               categories#show
#                              PATCH  /categories/:id(.:format)               categories#update
#                              PUT    /categories/:id(.:format)               categories#update
#                              DELETE /categories/:id(.:format)               categories#destroy
#                      session POST   /session(.:format)                      sessions#create
#                  new_session GET    /session/new(.:format)                  sessions#new
#                              DELETE /session(.:format)                      sessions#destroy
#                 adopt_animal PATCH  /animals/:id/adopt(.:format)            animals#adopt
# waiting_for_adoption_animals GET    /animals/waiting-for-adoption(.:format) animals#waiting_for_adoption
#                      animals GET    /animals(.:format)                      animals#index
#                              POST   /animals(.:format)                      animals#create
#                   new_animal GET    /animals/new(.:format)                  animals#new
#                  edit_animal GET    /animals/:id/edit(.:format)             animals#edit
#                       animal GET    /animals/:id(.:format)                  animals#show
#                              PATCH  /animals/:id(.:format)                  animals#update
#                              PUT    /animals/:id(.:format)                  animals#update
#                        about GET    /about(.:format)                        pages#about
#                          faq GET    /faq(.:format)                          pages#faq
#                      contact GET    /contact(.:format)                      pages#contact
#                     pawswalk GET    /pawswalk(.:format)                     pages#pawswalk
#

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
end
