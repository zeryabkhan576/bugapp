class CreateDevPro < ActiveRecord::Migration[6.0]
  def change
    create_table :dev_pro do |t|
      t.integer :developer_id
      t.integer :project_id
    end
  end
end
