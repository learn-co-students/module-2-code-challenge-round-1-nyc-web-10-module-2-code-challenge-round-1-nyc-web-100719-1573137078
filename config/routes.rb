Rails.application.routes.draw do
  # resources :powers, only: [:index]
  # resources :heroines, only: [:index]  
  #heroine paths
  get 'heroines', to: 'heroines#index', as: 'heroines'
  get 'heroines/new', to: 'heroines#new', as: 'new_heroine'
  get 'heroines/:id', to: 'heroines#show', as: 'heroine'
  post 'heroines', to: 'heroines#create'
  get 'heroines/:id/edit', to: 'heroines#edit', as: 'edit_heroine'
  patch 'heroines/:id', to: 'heroines#update'
  delete 'heroines.:id', to: 'heroines#delete'


  #power paths
  get 'powers', to: 'powers#index', as: 'powers'
  get 'powers/new', to: 'powers#new', as: 'new_power'
  get 'powers/:id', to: 'powers#show', as: 'power'
  post 'powers', to: 'powers#create'
  get 'powers/:id/edit', to: 'powers#edit', as: 'edit_power'
  patch 'powers/:id', to: 'powers#update'
  delete 'powers.:id', to: 'powers#delete'

end
