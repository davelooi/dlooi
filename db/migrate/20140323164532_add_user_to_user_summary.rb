class AddUserToUserSummary < ActiveRecord::Migration
  def change
    add_column :user_summaries, :user_id, :integer
  end
end
