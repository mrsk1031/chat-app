Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
