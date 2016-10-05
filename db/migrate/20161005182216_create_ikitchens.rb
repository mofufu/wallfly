class CreateIkitchens < ActiveRecord::Migration
  def change
    create_table :ikitchens do |t|
      t.belongs_to :house, index: true, foreign_key: true
      t.string :sink
      t.string :cabinet
      t.string :stove
      t.string :floor

      t.timestamps null: false
    end
  end
end
