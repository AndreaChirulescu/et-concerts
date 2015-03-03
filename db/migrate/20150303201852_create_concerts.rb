class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.integer :band_id
      t.integer :venue_id
      t.datetime :date

      t.timestamps null: false
    end
  end
end
