class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :company, index: true
      t.string :industry
      t.string :position
      t.date :start
      t.date :end
      t.text :desc
      t.references :user, index: true

      t.timestamps
    end
  end
end
