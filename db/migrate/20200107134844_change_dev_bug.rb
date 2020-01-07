class ChangeDevBug < ActiveRecord::Migration[6.0]
  def change
    add_column :bugs, :dev_bug_id, :integer
  end
end
