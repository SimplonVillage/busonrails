class AddCiviliteToParents < ActiveRecord::Migration
  def change
  	add_column :parents, :civilite, :string
    add_column :parents, :civilite2, :string
  end
end
