class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :JobId
      t.string :type
      t.text :JobDesc
      t.integer :exp_year
      t.integer :exp_mon
      t.string :salary
      t.integer :Vacency
      t.string :Location

      t.timestamps
    end
  end
end
