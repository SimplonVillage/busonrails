class AddChampsToAdresse < ActiveRecord::Migration
  def change
    add_column :parents, :street_number, :string
    add_column :parents, :route, :string
    add_column :parents, :locality, :string
    add_column :parents, :administratrive_area_level_1, :string
    add_column :parents, :postal_code, :string
    add_column :parents, :country, :string
  end
end