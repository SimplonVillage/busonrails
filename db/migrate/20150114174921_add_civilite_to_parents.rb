class AddCiviliteToParents < ActiveRecord::Migration
  def change
    add_column :parents, :civilite, :string
  end
end
