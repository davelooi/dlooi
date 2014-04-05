class ChangeUserToProfileAssociation < ActiveRecord::Migration
  def change
    rename_column :educations, :user_id, :profile_id
    rename_column :jobs, :user_id, :profile_id
    rename_column :languages, :user_id, :profile_id
    rename_column :skills, :user_id, :profile_id
    rename_column :user_summaries, :user_id, :profile_id
  end
end
