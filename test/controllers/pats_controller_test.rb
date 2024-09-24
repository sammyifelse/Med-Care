require "test_helper"

class PatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pat = pats(:one)
  end

  test "should get index" do
    get pats_url
    assert_response :success
  end

  test "should get new" do
    get new_pat_url
    assert_response :success
  end

  test "should create pat" do
    assert_difference("Pat.count") do
      post pats_url, params: { pat: { Appointment_status: @pat.Appointment_status, Date_of_Registration: @pat.Date_of_Registration, Gender: @pat.Gender, Patient_first_Name: @pat.Patient_first_Name, Patient_second_name: @pat.Patient_second_name, id: @pat.id, view_Details: @pat.view_Details } }
    end

    assert_redirected_to pat_url(Pat.last)
  end

  test "should show pat" do
    get pat_url(@pat)
    assert_response :success
  end

  test "should get edit" do
    get edit_pat_url(@pat)
    assert_response :success
  end

  test "should update pat" do
    patch pat_url(@pat), params: { pat: { Appointment_status: @pat.Appointment_status, Date_of_Registration: @pat.Date_of_Registration, Gender: @pat.Gender, Patient_first_Name: @pat.Patient_first_Name, Patient_second_name: @pat.Patient_second_name, id: @pat.id, view_Details: @pat.view_Details } }
    assert_redirected_to pat_url(@pat)
  end

  test "should destroy pat" do
    assert_difference("Pat.count", -1) do
      delete pat_url(@pat)
    end

    assert_redirected_to pats_url
  end
end
