class DeleteTable2 < ActiveRecord::Migration[6.0]
  def change
    drop_table :devbugs
  end
end
