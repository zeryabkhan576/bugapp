class CreateTabledevbug2 < ActiveRecord::Migration[6.0]
  def change
    create_table :dev_bugs do |t|
      t.integer :developer_id
      t.integer :bug_id
    end
  end
end
