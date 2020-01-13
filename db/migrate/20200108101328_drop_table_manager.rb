class DropTableManager < ActiveRecord::Migration[6.0]
  def change
    drop_table :managers
    drop_table :dev_pros
    drop_table :dev_bugs
    drop_table :qa_pros
  end
end
