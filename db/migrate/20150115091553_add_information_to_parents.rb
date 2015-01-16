class AddInformationToParents < ActiveRecord::Migration
  def change
    add_column :parents, :urgtelport, :string
    add_column :parents, :telport1, :string
    add_column :parents, :telport2, :string
    add_column :parents, :telpro1, :string
    add_column :parents, :telpro2, :string

  end
end