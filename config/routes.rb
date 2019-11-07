Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]
  
  post '/heroines/filter', to: 'heroines#filter', as: 'filter'
end
