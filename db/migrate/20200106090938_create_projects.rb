class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
    	t.string :name
    	t.text :description
    	t.integer :user_id
    	t.integer :bug_id
    end
  end
end
