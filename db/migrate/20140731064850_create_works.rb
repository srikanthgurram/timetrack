class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.integer :work_hours
      t.text :work_details
      t.integer :employee_ud
      t.integer :project_id
      t.timestamps
    end
  end
end
