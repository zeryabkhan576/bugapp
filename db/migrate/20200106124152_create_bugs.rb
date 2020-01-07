class CreateBugs < ActiveRecord::Migration[6.0]
  def change
    create_table :bugs do |t|
      t.string :name
      t.text :description
      t.integer :deadline
      t.integer "bug_type", default: 0
      t.integer "bug_status", default: 0
    end
  end
end
