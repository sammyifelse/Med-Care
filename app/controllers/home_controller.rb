class HomeController < ApplicationController
  def index
    # Group by day and count registered patients
    @patients_per_day = Med.group("DATE(created_at)").count
    puts @patients_per_day.inspect  # Add this line for debugging

    # # Fetching patient data with age for chart display
    # @meds_data = Med.select(:first_name, :DOB).map do |med|
    #   {
    #     first_name: med.first_name,
    #     age: calculate_age(med.DOB)
    #   }
    # end
  end

  def about
  end

  def newPatient
  end

  def patientData
  end

  def registerPatient
  end

  private

  # Calculate age based on the Date of Birth (DOB)
  # def calculate_age(dob)
  #   now = Time.zone.now.to_date
  #   now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  # end
end
