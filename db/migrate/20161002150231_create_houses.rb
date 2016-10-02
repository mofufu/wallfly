class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.belongs_to :user, index: true, foreign_key: true
      t.text :note

      t.timestamps null: false
    end
  end
end
