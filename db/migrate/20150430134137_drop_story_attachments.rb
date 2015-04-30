class DropStoryAttachments < ActiveRecord::Migration
  def up
    drop_table :story_attachments
  end

  def down
    create_table(:story_attachments) do |t|
      t.integer :story_id
      t.timestamps
    end

    add_attachment :story_attachments, :attachment
  end
end
