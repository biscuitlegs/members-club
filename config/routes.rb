Rails.application.routes.draw do
  resources :posts
  devise_for :members, :controllers => { registrations: 'registrations' }
  root to: "posts#index"
end
