Rails.application.routes.draw do
  resources :powers, only: [:index]
  resources :heroines, only: [:index]  

# heroines routes 
  #index
  #get '/heroines', to: 'heroines#index', as: 'heroines'
  
  #new
  get 'heroines/new', to: 'heroines#new', as: 'new_heroine'
  #create
  post 'heroines', to: 'heroines#create'
  #show
  get '/heroines/:id', to: 'heroines#show', as: 'heroine'
  



#powers routes
#get '/powers', to: 'powers#index', as: 'powers'
get '/powers/:id', to: 'powers#show', as: 'power'
#create
post '/powers', to: 'powers#create'
#new 
get 'powers/new', to: 'powers#new', as: 'new_power'

end
