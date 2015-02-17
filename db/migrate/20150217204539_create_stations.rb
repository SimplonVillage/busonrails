class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :nom
      t.string :adresse
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    create_table :circuits_stations, id: false do |t|
      t.belongs_to :circuit, index: true
      t.belongs_to :station, index: true      
    end
    add_column :enfants, :station_id, :interger
    add_index :enfants, :station_id
  end
end
