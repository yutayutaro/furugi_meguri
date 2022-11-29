class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
    
      t.timestamps
      t.text :title, null: false
      t.integer :customer_id, null: false
      t.integer :shop_id, null: false
      t.string :introduction, mull: false
      
    end
  end
end
