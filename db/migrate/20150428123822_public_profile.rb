class PublicProfile < ActiveRecord::Migration
  def up
    remove_column :users, :name_is_public
    remove_column :users, :avatar_is_public
    remove_column :users, :email_is_public

    change_table(:users) do |t|
      t.boolean :is_public, null: false, default: false
    end
  end
end
