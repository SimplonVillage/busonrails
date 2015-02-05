class AddChampsToUrgadresse < ActiveRecord::Migration
  def change
    add_column :parents, :urg_street_number, :string
    add_column :parents, :urg_route, :string
    add_column :parents, :urg_locality, :string
    add_column :parents, :urg_administratrive_area_level_1, :string
    add_column :parents, :urg_postal_code, :string
    add_column :parents, :urg_country, :string
  end
end
