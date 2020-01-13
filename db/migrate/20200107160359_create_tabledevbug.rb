class CreateTabledevbug < ActiveRecord::Migration[6.0]
  def change
    create_table :devbugs do |t|
      t.integer :developer_id
      t.integer :bug_id

    end
  end
end
