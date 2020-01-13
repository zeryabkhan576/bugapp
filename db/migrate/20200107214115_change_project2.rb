class ChangeProject2 < ActiveRecord::Migration[6.0]
  def change
    add_column :projects , :manager_id , :integer
    remove_column :projects, :bud_id
  end
end
