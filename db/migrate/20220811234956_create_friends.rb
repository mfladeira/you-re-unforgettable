class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string   :name,          null: false
      t.decimal  :max_price,         default: 0, precision: 8
      t.date     :birthday,      null: false
      t.string   :phone_number,  null: false
      t.string   :product_category, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
