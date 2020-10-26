Rails.application.routes.draw do
  resources :posts
  devise_for :members
  root to: "posts#index"
end
