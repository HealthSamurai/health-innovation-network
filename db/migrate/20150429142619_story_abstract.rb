class StoryAbstract < ActiveRecord::Migration
  def change
    change_table(:stories) do |t|
      t.string   :abstract
    end
  end
end
