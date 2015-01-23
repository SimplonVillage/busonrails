class CreateNiveaus < ActiveRecord::Migration
  def change
    create_table :niveaus do |t|
      t.string :nom

      t.timestamps
    end

    create_table :classes_niveaus, id: false do |t|
      t.belongs_to :classe, index: true
      t.belongs_to :niveau, index: true
    end
  end
end
