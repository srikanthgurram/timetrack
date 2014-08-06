class AddDatetimeperformedFiledToWorks < ActiveRecord::Migration
  def change
  	add_column :works, :date_time_performed, :datetime
  end
end
