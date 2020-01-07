class ChangeTableManager < ActiveRecord::Migration[6.0]
  def change
    remove_column :managers, :user_id
    add_column :managers, :project_id, :integer
    add_column :managers, :developer_id, :integer
    add_column :managers, :qa_id, :integer
  end
end
