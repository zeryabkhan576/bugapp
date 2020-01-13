class ChangeBugs < ActiveRecord::Migration[6.0]
  def change
    add_column :bugs , :qa_id , :integer
    add_column :bugs , :project_id , :integer
  end
end
