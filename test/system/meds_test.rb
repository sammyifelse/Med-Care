require "application_system_test_case"

class MedsTest < ApplicationSystemTestCase
  setup do
    @med = meds(:one)
  end

  test "visiting the index" do
    visit meds_url
    assert_selector "h1", text: "Meds"
  end

  test "should create med" do
    visit meds_url
    click_on "New med"

    fill_in "Adress", with: @med.Adress
    fill_in "Dob", with: @med.DOB
    fill_in "Email", with: @med.email
    fill_in "First name", with: @med.first_name
    fill_in "Last name", with: @med.last_name
    fill_in "Phone", with: @med.phone
    click_on "Create Med"

    assert_text "Med was successfully created"
    click_on "Back"
  end

  test "should update Med" do
    visit med_url(@med)
    click_on "Edit this med", match: :first

    fill_in "Adress", with: @med.Adress
    fill_in "Dob", with: @med.DOB
    fill_in "Email", with: @med.email
    fill_in "First name", with: @med.first_name
    fill_in "Last name", with: @med.last_name
    fill_in "Phone", with: @med.phone
    click_on "Update Med"

    assert_text "Med was successfully updated"
    click_on "Back"
  end

  test "should destroy Med" do
    visit med_url(@med)
    click_on "Destroy this med", match: :first

    assert_text "Med was successfully destroyed"
  end
end
