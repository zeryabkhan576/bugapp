class DeleteTableBug < ActiveRecord::Migration[6.0]
  def change
    drop_table :bugs
  end
end
