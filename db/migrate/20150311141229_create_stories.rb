class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :body
      t.boolean :published, default: false

      t.timestamps null: false
    end
  end
end
