class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :email
      t.string :url
      t.date :dob
      t.string :gender
      t.text :address

      t.timestamps
    end
  end
end
