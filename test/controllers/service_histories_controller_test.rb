require "test_helper"

class ServiceHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_history = service_histories(:one)
  end

  test "should get index" do
    get service_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_service_history_url
    assert_response :success
  end

  test "should create service_history" do
    assert_difference("ServiceHistory.count") do
      post service_histories_url, params: { service_history: { amount_due: @service_history.amount_due, amount_paid: @service_history.amount_paid, customer_id: @service_history.customer_id, enddate: @service_history.enddate, product_id: @service_history.product_id, startdate: @service_history.startdate, status: @service_history.status } }
    end

    assert_redirected_to service_history_url(ServiceHistory.last)
  end

  test "should show service_history" do
    get service_history_url(@service_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_history_url(@service_history)
    assert_response :success
  end

  test "should update service_history" do
    patch service_history_url(@service_history), params: { service_history: { amount_due: @service_history.amount_due, amount_paid: @service_history.amount_paid, customer_id: @service_history.customer_id, enddate: @service_history.enddate, product_id: @service_history.product_id, startdate: @service_history.startdate, status: @service_history.status } }
    assert_redirected_to service_history_url(@service_history)
  end

  test "should destroy service_history" do
    assert_difference("ServiceHistory.count", -1) do
      delete service_history_url(@service_history)
    end

    assert_redirected_to service_histories_url
  end
end
