class ChangeTableDeveloper < ActiveRecord::Migration[6.0]
  def change
    add_column :developers, :project_id, :integer
    add_column :developers, :bugs_id, :integer
    remove_column :developers, :user_id
  end
end
