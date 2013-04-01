class CreateEmprJobs < ActiveRecord::Migration
  def change
    create_table :empr_jobs do |t|
      t.string :EmprID
      t.string :JobID

      t.timestamps
    end
  end
end
