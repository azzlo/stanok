class FinancialExpensesController < ApplicationController
  before_action :set_financial_expense, only: [:show, :edit, :update, :destroy, :close_debt]

  # GET /financial_expenses
  # GET /financial_expenses.json
  def index
    @financial_expenses = FinancialExpense.all
  end

  # GET /financial_expenses/1
  # GET /financial_expenses/1.json
  def show
    @debt = @financial_expense.amount - @financial_expense.debt_payments.sum(:amount)
  end

  # GET /financial_expenses/new
  def new
    @financial_expense = FinancialExpense.new
  end

  # GET /financial_expenses/1/edit
  def edit
  end

  # POST /financial_expenses
  # POST /financial_expenses.json
  def create
    @financial_expense = FinancialExpense.new(financial_expense_params)

    respond_to do |format|
      if @financial_expense.save
        format.html { redirect_to welcome_financial_state_url, notice: '¡Se registro nuevo Gasto exitosamente!' }
        format.json { render :show, status: :created, location: @financial_expense }
      else
        format.html { render :new }
        format.json { render json: @financial_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_expenses/1
  # PATCH/PUT /financial_expenses/1.json
  def update
    respond_to do |format|
      if @financial_expense.update(financial_expense_params)
        format.html { redirect_to welcome_financial_state_url, notice: '¡Se actualizo Gasto exitosamente!.' }
        format.json { render :show, status: :ok, location: @financial_expense }
      else
        format.html { render :edit }
        format.json { render json: @financial_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_expenses/1
  # DELETE /financial_expenses/1.json
  def destroy
    @financial_expense.destroy
    respond_to do |format|
      format.html { redirect_to financial_expenses_url, notice: 'Financial expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def close_debt
    @financial_expense.update_attribute(:active_debt, false)
    respond_to do |format|
      format.html { redirect_to @financial_expense, notice: 'Se ha concluido esta deuda.' }
      format.json { render :show, status: :created, location: @debt_payment }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_expense
      @financial_expense = FinancialExpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def financial_expense_params
      params.require(:financial_expense).permit(:amount, :description, :debt)
    end
end
