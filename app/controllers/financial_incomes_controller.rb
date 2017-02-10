class FinancialIncomesController < ApplicationController
  before_action :set_financial_income, only: [:show, :edit, :update, :destroy]

  # GET /financial_incomes
  # GET /financial_incomes.json
  def index
    @financial_incomes = FinancialIncome.all
  end

  # GET /financial_incomes/1
  # GET /financial_incomes/1.json
  def show
  end

  # GET /financial_incomes/new
  def new
    @financial_income = FinancialIncome.new
  end

  # GET /financial_incomes/1/edit
  def edit
  end

  # POST /financial_incomes
  # POST /financial_incomes.json
  def create
    @financial_income = FinancialIncome.new(financial_income_params)

    respond_to do |format|
      if @financial_income.save
        format.html { redirect_to @financial_income, notice: 'Financial income was successfully created.' }
        format.json { render :show, status: :created, location: @financial_income }
      else
        format.html { render :new }
        format.json { render json: @financial_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_incomes/1
  # PATCH/PUT /financial_incomes/1.json
  def update
    respond_to do |format|
      if @financial_income.update(financial_income_params)
        format.html { redirect_to @financial_income, notice: 'Financial income was successfully updated.' }
        format.json { render :show, status: :ok, location: @financial_income }
      else
        format.html { render :edit }
        format.json { render json: @financial_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_incomes/1
  # DELETE /financial_incomes/1.json
  def destroy
    @financial_income.destroy
    respond_to do |format|
      format.html { redirect_to financial_incomes_url, notice: 'Financial income was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_income
      @financial_income = FinancialIncome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def financial_income_params
      params.require(:financial_income).permit(:amount, :project_payment_id, :service_id)
    end
end
