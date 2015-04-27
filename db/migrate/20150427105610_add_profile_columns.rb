class AddProfileColumns < ActiveRecord::Migration
  def up
    change_table(:users) do |t|
      t.string  :name
      t.boolean :name_is_public, null: false, default: false
      t.boolean :avatar_is_public, null: false, default: false
      t.boolean :email_is_public, null: false, default: false

      t.string  :position
      t.boolean :position_is_public, null: false, default: false
    end

    add_attachment :users, :avatar
  end
end
