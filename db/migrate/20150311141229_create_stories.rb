class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title_ru
      t.string :title_en

      t.text :body_ru
      t.text :body_en

      t.boolean :published, default: false

      t.timestamps null: false
    end
  end
end
