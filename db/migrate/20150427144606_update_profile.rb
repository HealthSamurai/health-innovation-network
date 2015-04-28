class UpdateProfile < ActiveRecord::Migration
  def up
    change_table(:users) do |t|
      t.string :city
      t.string :state
    end
  end

  def down
    remove_column :users, :city
    remove_column :users, :state
  end
end
