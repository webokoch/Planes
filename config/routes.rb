Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'planes#index', as: "planes"


  # get '/planes', to: 'planes#index'
  get '/new', to: 'planes#new', as: "new_plane"
  get '/:id', to: 'planes#show', as: "plane"
  post '/', to: 'planes#create'
  get '/:id/edit', to: 'planes#edit', as: "edit_plane"
  patch '/:id', to: 'planes#update'
  delete '/:id', to: 'planes#destroy'
  # resources :planes
end
