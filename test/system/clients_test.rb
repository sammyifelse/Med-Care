require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "should create client" do
    visit clients_url
    click_on "New client"

    fill_in "Appointment status", with: @client.Appointment_status
    fill_in "Client first name", with: @client.Client_first_Name
    fill_in "Client second name", with: @client.Client_second_name
    fill_in "Date of registration", with: @client.Date_of_Registration
    fill_in "Gender", with: @client.Gender
    fill_in "Id", with: @client.id
    fill_in "View details", with: @client.view_Details
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "should update Client" do
    visit client_url(@client)
    click_on "Edit this client", match: :first

    fill_in "Appointment status", with: @client.Appointment_status
    fill_in "Client first name", with: @client.Client_first_Name
    fill_in "Client second name", with: @client.Client_second_name
    fill_in "Date of registration", with: @client.Date_of_Registration
    fill_in "Gender", with: @client.Gender
    fill_in "Id", with: @client.id
    fill_in "View details", with: @client.view_Details
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "should destroy Client" do
    visit client_url(@client)
    click_on "Destroy this client", match: :first

    assert_text "Client was successfully destroyed"
  end
end
