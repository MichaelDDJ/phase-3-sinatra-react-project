class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :description
      t.timestamps
    end
  end
end
