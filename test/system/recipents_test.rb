require "application_system_test_case"

class RecipentsTest < ApplicationSystemTestCase
  setup do
    @recipent = recipents(:one)
  end

  test "visiting the index" do
    visit recipents_url
    assert_selector "h1", text: "Recipents"
  end

  test "should create recipent" do
    visit recipents_url
    click_on "New recipent"

    fill_in "Age", with: @recipent.Age
    fill_in "Appointment status", with: @recipent.Appointment_Status
    fill_in "Date of registration", with: @recipent.Date_Of_registration
    fill_in "Details", with: @recipent.Details
    fill_in "Gender", with: @recipent.Gender
    fill_in "Name", with: @recipent.Name
    click_on "Create Recipent"

    assert_text "Recipent was successfully created"
    click_on "Back"
  end

  test "should update Recipent" do
    visit recipent_url(@recipent)
    click_on "Edit this recipent", match: :first

    fill_in "Age", with: @recipent.Age
    fill_in "Appointment status", with: @recipent.Appointment_Status
    fill_in "Date of registration", with: @recipent.Date_Of_registration
    fill_in "Details", with: @recipent.Details
    fill_in "Gender", with: @recipent.Gender
    fill_in "Name", with: @recipent.Name
    click_on "Update Recipent"

    assert_text "Recipent was successfully updated"
    click_on "Back"
  end

  test "should destroy Recipent" do
    visit recipent_url(@recipent)
    click_on "Destroy this recipent", match: :first

    assert_text "Recipent was successfully destroyed"
  end
end
