class CreateGifts < ActiveRecord::Migration[6.1]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :link
      t.string :image_url
      t.decimal :price
      t.string :category

      t.timestamps
    end
  end
end
