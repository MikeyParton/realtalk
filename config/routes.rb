Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
        
  get '/profile', to: 'users#show', as: 'profile'
  get '/contacts', to: 'users#index', as: 'contacts'
  
  resources :chats do
    resources :messages
  end
    
  devise_for :users
    
  root to: 'chats#index'
  
  #Mount websocket connection    
  mount ActionCable.server => '/cable'
    
end