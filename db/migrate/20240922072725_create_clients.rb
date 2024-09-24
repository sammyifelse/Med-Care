class CreateClients < ActiveRecord::Migration[7.2]
  def change
    create_table :clients, id: false do |t|
      t.integer :Client_id, primary_key: true
      t.string :Client_first_Name
      t.string :Client_second_name
      t.string :Gender
      t.date :Date_of_Registration
      t.string :Appointment_status
      t.string :view_Details

      t.timestamps
    end
  end
end
