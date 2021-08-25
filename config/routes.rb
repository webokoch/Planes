Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/planes', to: 'planes#index'
  get '/planes/new', to: 'planes#new'
  get '/planes/:id', to: 'planes#show'
  post '/planes', to: 'planes#create'
  get '/planes/:id/edit', to: 'planes#edit'
  patch '/planes/:id', to: 'planes#update'
  delete '/planes/:id', to: 'planes#detstroy'
end
