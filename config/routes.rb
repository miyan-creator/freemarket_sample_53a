Rails.application.routes.draw do
  devise_for :users
  resources :items
  resources :mypages, only: :index
  resources :sell
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :signup do
    collection do
      get 'registration_type'
      get 'registration'
      get 'sms_confirmation' 
      get 'adress'
      get 'credit'
      get 'complete' 
    end
  end
  root 'items#index'
end
