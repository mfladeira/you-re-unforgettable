class ProductCategory < ApplicationRecord
  CATEGORIES = ["Automotive & Powersports", "Beauty", "Books", "Cell Phones & Accessories",
                 "Electronics", "Home & Garden", "Musical Instruments", "Personal Computers",
                 "Sports", "Tools", "Video Games", "Watches"]

  belongs_to :friend
end
