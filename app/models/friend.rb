class Friend < ApplicationRecord
  CATEGORIES = ["Automotive & Powersports", "Beauty", "Books", "Cell Phones & Accessories",
    "Electronics", "Home & Garden", "Musical Instruments", "Personal Computers",
    "Sports", "Tools", "Video Games", "Watches"]
  belongs_to :user
  has_one_attached :avatar
end
