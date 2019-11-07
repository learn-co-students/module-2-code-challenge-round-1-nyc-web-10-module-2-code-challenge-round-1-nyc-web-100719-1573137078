Rails.application.routes.draw do
  




  get '/heroines', to: 'heroines#index', as: 'heriones'
  get '/heroines/new', to: 'heroines#new', as: 'new_heroine'
  get '/heroines/:id', to: 'heroines#show', as: 'heroine'
  post '/heroines', to: 'heroines#create'

  get '/powers', to: 'powers#index', as: 'powers'
  get '/powers/new', to: 'powers#new', as: 'new_power'
  get '/powers/:id', to: 'powers#show', as: 'power'


end
