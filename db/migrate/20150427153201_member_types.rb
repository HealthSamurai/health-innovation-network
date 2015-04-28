class MemberTypes < ActiveRecord::Migration
  def change
    create_table 'member_types' do |t|
      t.string :title
      t.timestamps
    end

    create_table 'member_types_users', :id => false do |t|
      t.column :user_id, :integer
      t.column :member_type_id, :integer
      t.timestamps
    end
  end
end
