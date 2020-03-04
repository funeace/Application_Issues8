Rails.application.routes.draw do
  root "homes#top"
  get "home/about" => "homes#about"

  devise_for :users, :controllers =>{
    :registrations => 'users/registrations'
  }
  resources :books , only: [:index, :show, :edit, :create,  :update, :destroy]
  resources :users , only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
