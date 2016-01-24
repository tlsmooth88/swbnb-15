Rails.application.routes.draw do
  root to: 'pages#home'
  get 'login' , to: 'sessions#new'
  get 'profile', to: 'pages#profile' 
  get 'seattlehostlist' , to: 'pages#seattle_host_list'
  get 'tokyohostlist' , to: 'pages#tokyo_host_list'
  get 'search', to: 'events#searchform'
  post 'search', to: 'events#search'
  
  devise_for :users
  resources :events
  
  # get 'pages/profile'
end
