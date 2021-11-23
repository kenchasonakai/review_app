class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :item_code
      t.string :user_name
      t.integer :score
      t.text :content
      t.timestamps
    end
  end
end
