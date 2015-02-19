class AddCollumnToTrajet < ActiveRecord::Migration
  def change
    add_column :trajets, :circuit_id, :integer, index: true
    add_column :arrets, :trajet_id, :integer, index: true
    add_column :arrets, :station_id,:integer, index: true
  end
end
