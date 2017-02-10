Rails.application.routes.draw do
  resources :financial_expenses
  resources :financial_incomes
  resources :services
  resources :project_statuses
  devise_for :users
  get 'welcome/index'
  get 'welcome/financial_state'
  root 'welcome#index'

  resources :projects do
    resources :project_payments
    resources :project_contributors
  end
  resources :contributors
  resources :clients do
    resources :projects
  end
  resources :company_details
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
