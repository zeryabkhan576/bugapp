class ChangeTableQas < ActiveRecord::Migration[6.0]
  def change
    remove_column :qas, :user_id
    add_column :qas, :bug_id, :integer
    add_column :qas, :project_id, :integer

  end
end
