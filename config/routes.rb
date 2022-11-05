Rails.application.routes.draw do

  get 'welcome/index'
  # SET DEFAULT ROUTE
  root 'welcome#index'

  resources :friends
  resources :annotations

end
