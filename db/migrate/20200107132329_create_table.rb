class CreateTable < ActiveRecord::Migration[6.0]
  def change
    create_table :dev_bug do |t|
      t.integer :dev_id
      t.integer :bug_id
    end
  end
end
