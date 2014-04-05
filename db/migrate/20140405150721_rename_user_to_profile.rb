class RenameUserToProfile < ActiveRecord::Migration
  def change
    rename_table :users, :profiles
  end
end
