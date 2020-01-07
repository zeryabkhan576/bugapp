class ChangeTableUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :manager_id, :integer
    add_column :users, :developer_id, :integer
    add_column :users, :qa_id, :integer
  end
end
