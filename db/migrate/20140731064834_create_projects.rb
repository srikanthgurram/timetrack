class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.decimal :default_rate
      t.integer :client_id
      t.integer :company_id
      t.timestamps
    end
  end
end
