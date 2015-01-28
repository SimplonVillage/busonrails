class RemoveUrgtelToParents < ActiveRecord::Migration
  def self.down
    remove_column :urgtel
  end
end
