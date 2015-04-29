class Clear < ActiveRecord::Migration
  def change
    Story.destroy_all
  end
end
