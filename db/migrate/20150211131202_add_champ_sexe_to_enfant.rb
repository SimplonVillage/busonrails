class AddChampSexeToEnfant < ActiveRecord::Migration
  def change
    add_column :enfants, :sexe, :string
  end
end
