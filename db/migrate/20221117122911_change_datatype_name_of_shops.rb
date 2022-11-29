class ChangeDatatypeNameOfShops < ActiveRecord::Migration[6.1]
  def change
     change_column :shops, :name, :string
  end
end
