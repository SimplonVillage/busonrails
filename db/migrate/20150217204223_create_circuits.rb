class CreateCircuits < ActiveRecord::Migration
  def change
    create_table :circuits do |t|
      t.string :nom

      t.timestamps
    end
  end
end
