class AddColumnBirthdayPhoneNumberToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :birthday, :datetime
    add_column :users, :phone_number, :string
    add_column :users, :price, :decimal, default: 0, precision: 8
  end
end
