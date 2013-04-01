class CreateEmpJobs < ActiveRecord::Migration
  def change
    create_table :emp_jobs do |t|
      t.string :EmpID
      t.string :JobID

      t.timestamps
    end
  end
end
