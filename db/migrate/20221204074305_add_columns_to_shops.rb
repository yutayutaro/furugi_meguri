class AddColumnsToShops < ActiveRecord::Migration[6.1]
  def change
      add_column :shops, :longitude, :float
      add_column :shops, :latitude, :float
  end
end
