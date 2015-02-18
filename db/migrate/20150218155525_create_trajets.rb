class CreateTrajets < ActiveRecord::Migration
  def change
    create_table :trajets do |t|
      t.string :jours
      t.integer :montants
      t.integer :descendants

      t.timestamps
    end
  end
end
