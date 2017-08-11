class DebtPaymentsController < ApplicationController
  before_action :set_debt_payment, only: [:show, :edit, :update, :destroy]
  before_action :set_financial_expense, only: [ :index, :create, :new, :edit, :update, :destroy]

  # GET /debt_payments
  # GET /debt_payments.json
  def index
    @debt_payments = DebtPayment.all
  end

  # GET /debt_payments/1
  # GET /debt_payments/1.json
  def show
  end

  # GET /debt_payments/new
  def new
    @debt_payment = DebtPayment.new
  end

  # GET /debt_payments/1/edit
  def edit
  end

  # POST /debt_payments
  # POST /debt_payments.json
  def create
    @debt_payment = @financial_expense.debt_payments.build(debt_payment_params)

    respond_to do |format|
      if @debt_payment.save
        format.html { redirect_to @debt_payment.financial_expense, notice: 'Debt payment was successfully created.' }
        format.json { render :show, status: :created, location: @debt_payment }
      else
        format.html { render :new }
        format.json { render json: @debt_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debt_payments/1
  # PATCH/PUT /debt_payments/1.json
  def update
    respond_to do |format|
      if @debt_payment.update(debt_payment_params)
        format.html { redirect_to @debt_payment, notice: 'Debt payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @debt_payment }
      else
        format.html { render :edit }
        format.json { render json: @debt_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debt_payments/1
  # DELETE /debt_payments/1.json
  def destroy
    @debt_payment.destroy
    respond_to do |format|
      format.html { redirect_to @financial_expense, notice: 'Debt payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debt_payment
      @debt_payment = DebtPayment.find(params[:id])
    end

    def set_financial_expense
      @financial_expense = FinancialExpense.find(params[:financial_expense_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def debt_payment_params
      params.require(:debt_payment).permit(:amount, :financial_expense_id, :description)
    end
end
