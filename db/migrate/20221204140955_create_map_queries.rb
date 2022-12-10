class CreateMapQueries < ActiveRecord::Migration[6.1]
  def change
    create_table :map_queries do |t|

      t.timestamps
    end
  end
end
