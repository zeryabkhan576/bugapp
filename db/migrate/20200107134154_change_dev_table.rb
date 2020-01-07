class ChangeDevTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :developers, :project_id
    remove_column :developers, :bugs_id
    add_column :developers, :dev_bug_id, :integer
    add_column :developers, :dev_pro_id, :integer
  end
end
