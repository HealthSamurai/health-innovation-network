class MoreFieldsToStories < ActiveRecord::Migration
  def up
    change_table(:stories) do |t|
      t.string   :status
      t.integer  :user_id
      t.integer  :story_views_count
    end

    create_table(:story_attachments) do |t|
      t.integer :story_id
      t.timestamps
    end

    add_attachment :story_attachments, :attachment

    create_table(:story_stars) do |t|
      t.integer :story_id
      t.integer :user_id
      t.timestamps
    end

    create_table(:story_comments) do |t|
      t.integer :story_id
      t.integer :user_id
      t.string  :body
      t.timestamps
    end

  end
end
