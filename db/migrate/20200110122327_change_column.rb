class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :user_project_id
    remove_column :projects, :user_project_id
  end
end
