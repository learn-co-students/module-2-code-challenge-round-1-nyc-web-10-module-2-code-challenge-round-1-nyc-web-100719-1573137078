Rails.application.routes.draw do
  #heroine routes
  get "/heroine", to: "heroines#index", as: "heroines"
  get "/heroine/new", to: "heroines#new", as: "new_heroine"
  get "/heroine/:id", to: "heroines#show", as: "heroine"
  post "/heroine", to: "heroines#create"

  #power routes
  get "/powers/", to: "powers#index", as: "powers"
  get "/powers/:id", to: "powers#show", as: "power"
end
