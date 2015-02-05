class ChangeColumnsInEnfants < ActiveRecord::Migration
  def change
    remove_column :enfants, :ecole, :string
    rename_column :enfants, :classe, :classe_id
    add_column :enfants, :niveau_id, :integer
  end
end
