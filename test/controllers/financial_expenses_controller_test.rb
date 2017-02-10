require 'test_helper'

class FinancialExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financial_expense = financial_expenses(:one)
  end

  test "should get index" do
    get financial_expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_financial_expense_url
    assert_response :success
  end

  test "should create financial_expense" do
    assert_difference('FinancialExpense.count') do
      post financial_expenses_url, params: { financial_expense: { amount: @financial_expense.amount, description: @financial_expense.description } }
    end

    assert_redirected_to financial_expense_url(FinancialExpense.last)
  end

  test "should show financial_expense" do
    get financial_expense_url(@financial_expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_financial_expense_url(@financial_expense)
    assert_response :success
  end

  test "should update financial_expense" do
    patch financial_expense_url(@financial_expense), params: { financial_expense: { amount: @financial_expense.amount, description: @financial_expense.description } }
    assert_redirected_to financial_expense_url(@financial_expense)
  end

  test "should destroy financial_expense" do
    assert_difference('FinancialExpense.count', -1) do
      delete financial_expense_url(@financial_expense)
    end

    assert_redirected_to financial_expenses_url
  end
end
