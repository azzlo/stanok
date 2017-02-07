require 'test_helper'

class FinancialIncomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financial_income = financial_incomes(:one)
  end

  test "should get index" do
    get financial_incomes_url
    assert_response :success
  end

  test "should get new" do
    get new_financial_income_url
    assert_response :success
  end

  test "should create financial_income" do
    assert_difference('FinancialIncome.count') do
      post financial_incomes_url, params: { financial_income: { amount: @financial_income.amount, project_payment_id: @financial_income.project_payment_id, service_id: @financial_income.service_id } }
    end

    assert_redirected_to financial_income_url(FinancialIncome.last)
  end

  test "should show financial_income" do
    get financial_income_url(@financial_income)
    assert_response :success
  end

  test "should get edit" do
    get edit_financial_income_url(@financial_income)
    assert_response :success
  end

  test "should update financial_income" do
    patch financial_income_url(@financial_income), params: { financial_income: { amount: @financial_income.amount, project_payment_id: @financial_income.project_payment_id, service_id: @financial_income.service_id } }
    assert_redirected_to financial_income_url(@financial_income)
  end

  test "should destroy financial_income" do
    assert_difference('FinancialIncome.count', -1) do
      delete financial_income_url(@financial_income)
    end

    assert_redirected_to financial_incomes_url
  end
end
