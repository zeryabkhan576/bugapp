class ChangeQa < ActiveRecord::Migration[6.0]
  def change
    add_column :qas, :qa_pro_id, :integer
    remove_column :qas, :project_id

  end
end
