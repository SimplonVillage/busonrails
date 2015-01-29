class AddEcoleToEnfants < ActiveRecord::Migration
  def change
    add_column :enfants, :nom, :string
  end
end
