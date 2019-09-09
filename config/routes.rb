Rails.application.routes.draw do
  resources :teams
  devise_for :users
  get 'welcome/index'

  resources :projects

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
