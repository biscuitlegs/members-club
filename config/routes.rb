Rails.application.routes.draw do
  devise_for :members
  root to: "posts#index"
end
