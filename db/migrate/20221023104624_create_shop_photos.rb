class CreateShopPhotos < ActiveRecord::Migration[6.1]
    
  def change
    create_table :shop_photos do |t|

      t.timestamps
      t.string :introduction
      t.integer :shop_id
    end
  end
end
