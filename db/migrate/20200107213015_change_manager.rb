class ChangeManager < ActiveRecord::Migration[6.0]
  def change
    add_column :managers , :user_id , :integer
    remove_column :managers, :project_id
    remove_column :managers, :developer_id
    remove_column :managers, :qa_id
  end
end
