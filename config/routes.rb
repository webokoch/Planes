Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/planes', to: 'planes#index'
  get '/planes/new', to: 'planes#new', as: "new_plane"
  get '/planes/:id', to: 'planes#show', as: "plane"
  post '/planes', to: 'planes#create'
  get '/planes/:id/edit', to: 'planes#edit', as: "edit_plane"
  patch '/planes/:id', to: 'planes#update'
  delete '/planes/:id', to: 'planes#detstroy'
  # resources :planes
end
