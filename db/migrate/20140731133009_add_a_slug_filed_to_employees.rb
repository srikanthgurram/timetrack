class AddASlugFiledToEmployees < ActiveRecord::Migration
  def change
  	add_column :employees, :username, :string
  end
end
