class CreateQaPro < ActiveRecord::Migration[6.0]
  def change
    create_table :qa_pros do |t|
      t.integer :qa_id
      t.integer :project_id
    end
  end
end
