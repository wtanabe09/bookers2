Rails.application.routes.draw do
  get 'home/about' => 'home#about'
  root to: 'home#top'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :edit, :show, :update]

end