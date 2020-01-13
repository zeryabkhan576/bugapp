class ChangeQa2 < ActiveRecord::Migration[6.0]
  def change
    remove_column :qas, :bug_id
    add_column :qas , :user_id , :integer
    add_column :qas , :manager_id , :integer
    
  end
end
