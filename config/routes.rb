Rails.application.routes.draw do
  root to: 'monsters#index'
  resources :monsters
  resources :braves

end
