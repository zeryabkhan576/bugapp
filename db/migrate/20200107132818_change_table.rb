class ChangeTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :dev_bug, :dev_id, :developer_id
   
  end
end
