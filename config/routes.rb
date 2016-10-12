Rails.application.routes.draw do
    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      
  root to: 'pages#chats'
  get '/profile', to: 'pages#profile', as: 'profile'
  get '/contacts', to: 'pages#contacts', as: 'contacts'    
  get '/chats', to: 'pages#chats', as: 'chats'
  get '/chat', to: 'pages#chat', as: 'chat'    
    
end