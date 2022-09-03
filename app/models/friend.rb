class Friend < ApplicationRecord
  CATEGORIES = ["Beauty", "Eletronics", "Home & Garden", "Sports", "Watches"]
  belongs_to :user
  has_one_attached :avatar
end
