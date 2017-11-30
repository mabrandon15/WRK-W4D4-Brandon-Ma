Rails.application.routes.draw do
  get 'albums/new'

  get 'albums/index'

  get 'albums/show'

  resources :users
  resource :session
  resources :bands
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
