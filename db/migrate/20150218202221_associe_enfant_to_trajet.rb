class AssocieEnfantToTrajet < ActiveRecord::Migration
  def change
        create_table :enfants_trajets, id: false do |t|
      t.belongs_to :enfant, index: true
      t.belongs_to :trajet, index: true      
    end
  end
end
