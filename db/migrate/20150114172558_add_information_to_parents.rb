class AddInformationToParents < ActiveRecord::Migration
  def change
    add_column :parents, :telport1, :integer, :limit => 10, :null => false  
    add_column :parents, :telport2, :integer, :limit => 10, :null => false
    add_column :parents, :telpro1, :integer, :limit => 10, :null => false
    add_column :parents, :telpro2, :integer, :limit => 10, :null => false
  end
end
