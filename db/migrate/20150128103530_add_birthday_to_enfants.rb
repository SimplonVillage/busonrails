class AddBirthdayToEnfants < ActiveRecord::Migration
  def change
    add_column :enfants, :birthday, :date
  end
end
