class CreateCheats < ActiveRecord::Migration
  def change
    create_table :cheats do |t|
      t.references :product, index: true
      t.string :cheat
      t.string :desc
      t.string :note

      t.timestamps
    end
  end
end
