class CreateRecipents < ActiveRecord::Migration[7.2]
  def change
    create_table :recipents do |t|
      t.string :Name
      t.integer :Age
      t.string :Gender
      t.date :Date_Of_registration
      t.string :Appointment_Status
      t.string :Details

      t.timestamps
    end
  end
end
