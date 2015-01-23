class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :nom
      t.references :ecole, index: true

      t.timestamps
    end
  end
end
