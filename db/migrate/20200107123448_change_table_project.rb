class ChangeTableProject < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :user_id
  end
end
