class RemoveChampInShema < ActiveRecord::Migration
  def change
    remove_column :parents, :teldom, :string
    remove_column :parents, :telport1, :string
    remove_column :parents, :telport2, :string
    remove_column :parents, :telpro1, :string
    remove_column :parents, :telpro2, :string
    remove_column :parents, :urgteldom, :string
    remove_column :parents, :urgtelport, :string
    remove_column :parents, :urgtelpro, :string
    remove_column :parents, :street_number, :string
    remove_column :parents, :route, :string
    remove_column :parents, :locality, :string
    remove_column :parents, :administratrive_area_level_1, :string
    remove_column :parents, :postal_code, :string
    remove_column :parents, :country, :string
    remove_column :parents, :urg_street_number, :string
    remove_column :parents, :urg_route, :string
    remove_column :parents, :urg_locality, :string
    remove_column :parents, :urg_administratrive_area_level_1, :string
    remove_column :parents, :urg_postal_code, :string
    remove_column :parents, :urg_country, :string
    add_column :parents, :urgtel, :string
    add_column :parents, :tel1, :string
    add_column :parents, :tel2, :string
    add_column :parents, :tel3, :string
  end
end
