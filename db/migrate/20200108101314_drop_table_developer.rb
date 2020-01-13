class DropTableDeveloper < ActiveRecord::Migration[6.0]
  def change
    drop_table :developers
  end
end
