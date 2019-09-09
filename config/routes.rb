Rails.application.routes.draw do
  devise_for :users
  root 'cases#index'
  resources :cases do
    collection{ get "search"}
  end
end
