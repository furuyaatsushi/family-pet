Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  root 'cases#index'
  resources :cases do
    collection{ get "search"}
  end
  resources :rooms do
    resources :messages
  end
  get 'about' => 'cases#about', as: 'about'
end
