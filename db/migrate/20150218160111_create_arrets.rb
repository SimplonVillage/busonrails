class CreateArrets < ActiveRecord::Migration
  def change
    create_table :arrets do |t|
      t.time :horaire

      t.timestamps
    end
  end
end
