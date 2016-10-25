require 'test_helper'

class ProjectPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_payment = project_payments(:one)
  end

  test "should get index" do
    get project_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_project_payment_url
    assert_response :success
  end

  test "should create project_payment" do
    assert_difference('ProjectPayment.count') do
      post project_payments_url, params: { project_payment: { description: @project_payment.description, payment: @project_payment.payment, project_id: @project_payment.project_id, user_id: @project_payment.user_id } }
    end

    assert_redirected_to project_payment_url(ProjectPayment.last)
  end

  test "should show project_payment" do
    get project_payment_url(@project_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_payment_url(@project_payment)
    assert_response :success
  end

  test "should update project_payment" do
    patch project_payment_url(@project_payment), params: { project_payment: { description: @project_payment.description, payment: @project_payment.payment, project_id: @project_payment.project_id, user_id: @project_payment.user_id } }
    assert_redirected_to project_payment_url(@project_payment)
  end

  test "should destroy project_payment" do
    assert_difference('ProjectPayment.count', -1) do
      delete project_payment_url(@project_payment)
    end

    assert_redirected_to project_payments_url
  end
end
