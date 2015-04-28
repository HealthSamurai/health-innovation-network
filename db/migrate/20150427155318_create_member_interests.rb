class CreateMemberInterests < ActiveRecord::Migration
  def change
    create_table :member_interests do |t|
      t.string :title, null: false
      t.timestamps null: false
    end
    create_table 'member_interests_users', :id => false do |t|
      t.column :user_id, :integer
      t.column :member_interest_id, :integer
      t.timestamps
    end
  end
end
