class CreateFriendPreferences < ActiveRecord::Migration[6.1]
  def change
    create_table :friend_preferences do |t|
      t.string :name
      t.references :non_user_friend, null: false, foreign_key: true

      t.timestamps
    end
  end
end
