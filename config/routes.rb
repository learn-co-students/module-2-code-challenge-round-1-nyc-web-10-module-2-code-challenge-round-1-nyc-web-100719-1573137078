Rails.application.routes.draw do
  resources :powers, only: [:index]
  resources :heroines, only: [:index]  

  get '/', to: 'application#home', as: 'home'

  get 'heroine/new', to: 'heroines#new', as: 'new_heroine'
  get 'heroines/:id', to: 'heroines#show', as: 'show_heroine'
  post 'heroines', to: 'heroines#create'
  
  get 'powers/:id', to: 'powers#show', as: 'show_power'
end
