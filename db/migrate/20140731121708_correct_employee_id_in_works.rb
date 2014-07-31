class CorrectEmployeeIdInWorks < ActiveRecord::Migration
  def change
  	remove_column :works, :employee_ud
  	add_column :works, :employee_id, :integer
  end
end
