  class CreateBlogs < ActiveRecord::Migration[6.1]


  def change
    create_table :blogs do |t|

      t.timestamps
      t.integer :shop_id, null: false
      t.string :title, null: false
      t.string :introduction, null: false
    end
  end
end
