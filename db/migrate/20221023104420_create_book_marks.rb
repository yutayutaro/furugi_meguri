class CreateBookMarks < ActiveRecord::Migration[6.1]
  def change
    create_table :book_marks do |t|

      t.timestamps
      t.references :customer, foreign_key: true, null: false
      t.references :shop, foreign_key: true, null: false
    end
  end
end
