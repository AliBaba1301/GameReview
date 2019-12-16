Rails.application.routes.draw do

  
  
  resources :notes
  devise_for :users
  resources :games do
    collection do
      get 'search'
    end
  resources :reviews, except: [:show, :index]
  end
  get 'contact', to:'home#contact'
  post 'request_contact', to: 'home#request_contact'
  resources :games

  root 'games#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
