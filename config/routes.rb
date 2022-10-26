Rails.application.routes.draw do
  get 'welcome/index'

  # DEFAULT ROUTE
  root 'welcome#index'

  resources :friends
  resources :annotations

end
