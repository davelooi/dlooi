class CreateUserSummaries < ActiveRecord::Migration
  def change
    create_table :user_summaries do |t|
      t.string :title
      t.references :company, index: true
      t.integer :exp

      t.timestamps
    end
  end
end
