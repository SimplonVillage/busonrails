class AddInformationToParents < ActiveRecord::Migration
  def change
    add_column :parents, :urgtelport, :integer
  end
end
