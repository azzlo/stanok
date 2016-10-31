Rails.application.routes.draw do
  resources :project_statuses
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'

  resources :project_contributors
  resources :projects do
    resources :project_payments
  end
  resources :contributors
  resources :clients do
    resources :projects
  end
  resources :company_details
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
