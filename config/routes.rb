Rails.application.routes.draw do
  

  get 'sessions/new'

  root  'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'
  get 'about' => 'static_pages#about'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users 
  resources :account_activations, only: [:edit]


end

