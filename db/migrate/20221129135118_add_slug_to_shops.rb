class AddSlugToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :opening_hours, :string
  end
end
