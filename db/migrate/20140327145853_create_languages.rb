class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :spoken
      t.string :written
      t.references :user, index: true

      t.timestamps
    end
  end
end
