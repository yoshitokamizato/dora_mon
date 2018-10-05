Rails.application.routes.draw do
  root to: 'monsters#index'
  resources :monsters
  resources :braves
  resources :bosses
  get '/bosses', to: 'bosses#index'
  get '/bosses/new', to: 'bosses#new'
  get '/bosses/:id/edit', to: 'bosses#edit'
  patch 'bosses/:id', to: 'bosses#update'
  post '/bosses', to: 'bosses#create'
  delete '/bosses/:id', to: 'bosses#destroy'

end
