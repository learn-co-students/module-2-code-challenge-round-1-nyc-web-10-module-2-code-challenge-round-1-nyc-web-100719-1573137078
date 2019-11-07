Rails.application.routes.draw do
  resources :powers, only: [:index,]
  resources :heroines, only: [:index, :new]  

  get 'powers/:id', to: 'powers#show', as: 'power'

  get 'heroines/:id', to: 'heroines#show', as: 'heroine'
  post '/heroines', to: 'heroines#create'
end
