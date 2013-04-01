class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :EmpId
      t.date :dob
      t.string :Qualification
      t.string :Phone
      t.string :Mobile
      t.text :address
      t.string :location
      t.string :Industry
      t.string :function
      t.integer :exp_year
      t.integer :exp_mon

      t.timestamps
    end
  end
end
