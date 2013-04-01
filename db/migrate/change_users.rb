    class ChangeUsers < ActiveRecord::Migration
  	def change
    change_table :users do |t|
    	t.string : :user_type
    end
     end
end