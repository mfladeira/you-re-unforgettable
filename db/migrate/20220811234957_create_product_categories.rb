class CreateProductCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :product_categories do |t|
      t.string :name, null: false

      t.references :friend, null: false, foreign_key: true

      t.timestamps
    end
  end
end
