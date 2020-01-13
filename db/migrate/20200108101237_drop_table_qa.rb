class DropTableQa < ActiveRecord::Migration[6.0]
  def change
    drop_table  :qas
  end
end
