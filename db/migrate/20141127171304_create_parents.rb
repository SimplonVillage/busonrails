class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :nom
      t.string :prenom
      t.text :adresse
      t.integer :teldom, :limit => 10, :null => false
      t.string :telpro, :limit => 10, :null => false
      t.string :urgnom
      t.string :urgprenom
      t.string :urgtel, :limit => 10, :null => false
      t.text :urgadresse
      t.string :urgteldom, :limit => 10, :null => false
      t.string :urgtelpro, :limit => 10, :null => false

      t.timestamps
    end
  end
end
