class CreateCategoriesNew < ActiveRecord::Migration[6.1]
  def change
    change_table :categories do |t|
      t.rename :job_title, :title
    end
  end
end
