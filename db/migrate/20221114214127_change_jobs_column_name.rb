class ChangeJobsColumnName < ActiveRecord::Migration[6.1]
  def change
    change_table :categories do |t|
      t.rename :job_title, :job_title
    end
  end
end
