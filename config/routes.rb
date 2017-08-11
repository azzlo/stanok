Rails.application.routes.draw do
  resources :financial_expenses do
    resources :debt_payments
    collection do
      # get ':id/close', to: 'financial_expenses#close_debt', as: 'close'
    end
  end
  get '/financial_expense/:id/close', to: 'financial_expenses#close_debt', as: 'close_debt_financial_expense'



  resources :financial_incomes
  resources :services do
    resources :service_charges
  end
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
