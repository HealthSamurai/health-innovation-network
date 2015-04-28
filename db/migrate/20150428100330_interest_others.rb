class InterestOthers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.string   :engagement_interest_other
      t.string   :interest_area_other
    end
  end
end
