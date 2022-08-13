class CreateNonUserFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :non_user_friends do |t|
      t.string   :name,          null: false
      t.datetime :special_date,  null: false
      t.decimal  :price,         default: 0, precision: 8

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
