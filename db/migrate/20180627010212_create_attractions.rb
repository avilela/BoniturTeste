class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.text :address
      t.time :duration_time
      t.string :max_people
      t.decimal :price
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
