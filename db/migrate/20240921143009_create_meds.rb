class CreateMeds < ActiveRecord::Migration[7.2]
  def change
    create_table :meds do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.date :DOB
      t.text :Adress

      t.timestamps
    end
  end
end
