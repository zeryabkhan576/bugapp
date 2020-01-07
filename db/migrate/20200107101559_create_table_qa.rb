class CreateTableQa < ActiveRecord::Migration[6.0]
  def change
    create_table :qas do |t|
      t.integer :user_id
      t.string :name
    end
  end
end
