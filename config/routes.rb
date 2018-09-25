Rails.application.routes.draw do
  get    '/monsters',          to: 'monsters#index'
  get    '/monsters/new',      to: 'monsters#new'
  post   '/monsters',          to: 'monsters#create'
  get    '/monsters/:id/edit', to: 'monsters#edit'
  patch  'monsters/:id',       to: 'monsters#update'
  delete '/monsters/:id',      to: 'monsters#destroy'
end
