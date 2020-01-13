class ChangeDeveloper < ActiveRecord::Migration[6.0]
  def change
    add_column :developers , :user_id , :integer
    add_column :developers , :manager_id , :integer
  end
end
