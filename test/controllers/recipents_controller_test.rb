require "test_helper"

class RecipentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipent = recipents(:one)
  end

  test "should get index" do
    get recipents_url
    assert_response :success
  end

  test "should get new" do
    get new_recipent_url
    assert_response :success
  end

  test "should create recipent" do
    assert_difference("Recipent.count") do
      post recipents_url, params: { recipent: { Age: @recipent.Age, Appointment_Status: @recipent.Appointment_Status, Date_Of_registration: @recipent.Date_Of_registration, Details: @recipent.Details, Gender: @recipent.Gender, Name: @recipent.Name } }
    end

    assert_redirected_to recipent_url(Recipent.last)
  end

  test "should show recipent" do
    get recipent_url(@recipent)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipent_url(@recipent)
    assert_response :success
  end

  test "should update recipent" do
    patch recipent_url(@recipent), params: { recipent: { Age: @recipent.Age, Appointment_Status: @recipent.Appointment_Status, Date_Of_registration: @recipent.Date_Of_registration, Details: @recipent.Details, Gender: @recipent.Gender, Name: @recipent.Name } }
    assert_redirected_to recipent_url(@recipent)
  end

  test "should destroy recipent" do
    assert_difference("Recipent.count", -1) do
      delete recipent_url(@recipent)
    end

    assert_redirected_to recipents_url
  end
end
