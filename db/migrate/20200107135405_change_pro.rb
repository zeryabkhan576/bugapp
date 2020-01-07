class ChangePro < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :dev_pro_id, :integer
    
  end
end
