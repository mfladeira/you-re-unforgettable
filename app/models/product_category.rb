class ProductCategory < ApplicationRecord
  CATEGORIES = ["Beauty", "Eletronics", "Home & Garden", "Sports", "Watches"]
  belongs_to :friend
end
