Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'

  resources :project_contributors
  resources :project_payments
  resources :projects
  resources :contributors
  resources :clients
  resources :company_details
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
