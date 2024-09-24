require "application_system_test_case"

class PatsTest < ApplicationSystemTestCase
  setup do
    @pat = pats(:one)
  end

  test "visiting the index" do
    visit pats_url
    assert_selector "h1", text: "Pats"
  end

  test "should create pat" do
    visit pats_url
    click_on "New pat"

    fill_in "Appointment status", with: @pat.Appointment_status
    fill_in "Date of registration", with: @pat.Date_of_Registration
    fill_in "Gender", with: @pat.Gender
    fill_in "Patient first name", with: @pat.Patient_first_Name
    fill_in "Patient second name", with: @pat.Patient_second_name
    fill_in "Id", with: @pat.id
    fill_in "View details", with: @pat.view_Details
    click_on "Create Pat"

    assert_text "Pat was successfully created"
    click_on "Back"
  end

  test "should update Pat" do
    visit pat_url(@pat)
    click_on "Edit this pat", match: :first

    fill_in "Appointment status", with: @pat.Appointment_status
    fill_in "Date of registration", with: @pat.Date_of_Registration
    fill_in "Gender", with: @pat.Gender
    fill_in "Patient first name", with: @pat.Patient_first_Name
    fill_in "Patient second name", with: @pat.Patient_second_name
    fill_in "Id", with: @pat.id
    fill_in "View details", with: @pat.view_Details
    click_on "Update Pat"

    assert_text "Pat was successfully updated"
    click_on "Back"
  end

  test "should destroy Pat" do
    visit pat_url(@pat)
    click_on "Destroy this pat", match: :first

    assert_text "Pat was successfully destroyed"
  end
end
