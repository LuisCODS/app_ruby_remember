Rails.application.routes.draw do

  # crée 7 routes différentes pour chaque ressource: index, show, new, edit, create, updateet et destroy
  resources :friends
  resources :annotations

  # SET DEFAULT ROUTE: put it at the top of the file, should be matched first.
  root 'welcome#index'
  get 'welcome/index'


  # get '/friends/:id', to: 'friends#show'
  get '/friends/destroy/:id', to: 'friends#destroy'
  get '/annotations/destroy/:id', to: 'annotations#destroy'
  #get '/friends/:id' => 'friends#show', as: 'post'
end
