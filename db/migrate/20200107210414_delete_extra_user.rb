class DeleteExtraUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :manager_id
    remove_column :users, :developer_id
    remove_column :users, :qa_id
  end
end
