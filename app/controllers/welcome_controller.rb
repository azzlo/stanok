class WelcomeController < ApplicationController
  def index
    @stoped_projects = Project.where(project_status_id: 1).order(created_at: :desc)
    @running_projects = Project.where(project_status_id: 2).order(created_at: :desc)
    @paused_projects = Project.where(project_status_id: 3).order(created_at: :desc)
    @completed_projects = Project.where(project_status_id: 4).order(created_at: :desc)
    @projects = Project.all
    @services = Service.all.limit(10)
  end

  def financial_state
    @financial_incomes=FinancialIncome.all.limit(10)
    @financial_expences=FinancialExpense.all.limit(10)
    @total_incomes=FinancialIncome.all.sum(:amount)
    @total_expences=FinancialExpense.all.sum(:amount)
    @total=@total_incomes - @total_expences

  end
end
