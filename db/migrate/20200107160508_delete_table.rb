class DeleteTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :dev_bug
    drop_table :dev_pro
  end
end
