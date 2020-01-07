class ChangeProj < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :qa_pro_id, :integer
  end
end
