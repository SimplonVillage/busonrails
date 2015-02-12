class AddOrigineToTelephones < ActiveRecord::Migration
  def change
    add_column :parents, :origine1, :string
    add_column :parents, :origine2, :string
    add_column :parents, :origine3, :string
  end
end
