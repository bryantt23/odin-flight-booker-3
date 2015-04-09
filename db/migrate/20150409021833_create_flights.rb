class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.references :arriving_airport, index: true, foreign_key: true
      t.references :departing_airport, index: true, foreign_key: true
      t.datetime :departure
      t.integer :duration

      t.timestamps null: false
    end
  end
end
