class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    change_table :jobs do |t|
      t.rename :categ_id, :category_id
    end
  end
end
