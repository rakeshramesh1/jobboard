class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :EmpId
      t.string :Phone
      t.string :Mobile
      t.text :address
      t.string :location
      t.string :Industry
      t.string :function

      t.timestamps
    end
  end
end
