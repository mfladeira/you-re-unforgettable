class RemovePhoneNumberFromFriends < ActiveRecord::Migration[6.1]
  def change
    remove_column :friends, :phone_number, :string
  end
end
