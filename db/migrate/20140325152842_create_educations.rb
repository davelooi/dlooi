class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :title
      t.string :major
      t.references :institute, index: true
      t.string :grade
      t.date :graduate
      t.references :user, index: true

      t.timestamps
    end
  end
end
