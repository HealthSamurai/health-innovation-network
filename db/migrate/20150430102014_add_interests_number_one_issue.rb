class AddInterestsNumberOneIssue < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.string   :interest_number_one_issue
    end
  end
end
