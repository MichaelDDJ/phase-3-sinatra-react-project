class AddCategIdToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :categ_id, :integer
  end
end
