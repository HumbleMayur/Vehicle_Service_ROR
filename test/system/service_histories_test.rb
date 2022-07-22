require "application_system_test_case"

class ServiceHistoriesTest < ApplicationSystemTestCase
  setup do
    @service_history = service_histories(:one)
  end

  test "visiting the index" do
    visit service_histories_url
    assert_selector "h1", text: "Service histories"
  end

  test "should create service history" do
    visit service_histories_url
    click_on "New service history"

    fill_in "Amount due", with: @service_history.amount_due
    fill_in "Amount paid", with: @service_history.amount_paid
    fill_in "Customer", with: @service_history.customer_id
    fill_in "Enddate", with: @service_history.enddate
    fill_in "Product", with: @service_history.product_id
    fill_in "Startdate", with: @service_history.startdate
    fill_in "Status", with: @service_history.status
    click_on "Create Service history"

    assert_text "Service history was successfully created"
    click_on "Back"
  end

  test "should update Service history" do
    visit service_history_url(@service_history)
    click_on "Edit this service history", match: :first

    fill_in "Amount due", with: @service_history.amount_due
    fill_in "Amount paid", with: @service_history.amount_paid
    fill_in "Customer", with: @service_history.customer_id
    fill_in "Enddate", with: @service_history.enddate
    fill_in "Product", with: @service_history.product_id
    fill_in "Startdate", with: @service_history.startdate
    fill_in "Status", with: @service_history.status
    click_on "Update Service history"

    assert_text "Service history was successfully updated"
    click_on "Back"
  end

  test "should destroy Service history" do
    visit service_history_url(@service_history)
    click_on "Destroy this service history", match: :first

    assert_text "Service history was successfully destroyed"
  end
end
