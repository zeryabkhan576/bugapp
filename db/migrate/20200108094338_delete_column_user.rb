class DeleteColumnUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :user_type
    add_column :users, :role , :integer, default: 0
  end 
end
