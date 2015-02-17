class AssocieEcoleToStation < ActiveRecord::Migration
  def change
    add_column :ecoles, :station_id, :integer 
  end
end
