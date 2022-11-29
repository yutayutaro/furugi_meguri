class CreateNearestStations < ActiveRecord::Migration[6.1]
  def change
    create_table :nearest_stations do |t|

      t.timestamps
    end
  end
end
