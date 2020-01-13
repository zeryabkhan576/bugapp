class ChangeSchema < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_project_id, :integer
    remove_column :projects, :dev_pro_id
    remove_column :projects, :qa_pro_id
    remove_column :projects, :manager_id
    add_column :projects, :user_project_id, :integer
    add_column :bugs, :user_id, :integer
    remove_column :bugs, :dev_bug_id
    remove_column :bugs, :qa_id
   



   

  end
end
