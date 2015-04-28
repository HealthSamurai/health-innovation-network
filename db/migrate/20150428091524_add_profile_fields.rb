class AddProfileFields < ActiveRecord::Migration
  def up
    drop_table :member_interests
    drop_table 'member_interests_users'

    create_table 'company_categories' do |t|
      t.string :title
      t.timestamps
    end


    create_table :interest_areas do |t|
      t.string :title, null: false
      t.timestamps null: false
    end

    create_table 'interest_areas_users', :id => false do |t|
      t.column :user_id, :integer
      t.column :interest_area_id, :integer
      t.timestamps
    end

    create_table :engagement_interests do |t|
      t.string :title, null: false
      t.timestamps null: false
    end

    create_table :engagement_interests_users, :id => false do |t|
      t.column :user_id, :integer
      t.column :engagement_interest_id, :integer
      t.timestamps
    end

    change_table(:users) do |t|
      t.boolean  :company_is_accelerator
      t.integer  :company_category_id
      t.string   :areas_willing_to
      t.string   :company_contact_person
      t.string   :company_name
      t.string   :company_name_of_ace
      t.string   :company_position
      t.string   :company_site
      t.string   :linkedin
      t.string   :phone
    end
  end
end
