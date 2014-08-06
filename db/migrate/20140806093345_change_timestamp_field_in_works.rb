class ChangeTimestampFieldInWorks < ActiveRecord::Migration
  def change
  	remove_column :works, :date_time_performed
  	add_column :works, :date_time_performed, :datetime 
  end
end
