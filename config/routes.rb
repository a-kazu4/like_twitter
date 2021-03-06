Rails.application.routes.draw do

  root 'users#index'

  resources :users, only: [:new, :create, :index]

  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
