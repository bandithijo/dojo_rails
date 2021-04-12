Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "articles#index"
  devise_for :authors

  namespace :authors do
    root to: "dashboard#index"
    resources :dashboard, only: [:index]
  end

  resources :articles
end
