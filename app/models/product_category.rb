class ProductCategory < ApplicationRecord
  CATEGORIES = ["Beauty", "Electronics", "Home & Garden", "Sports", "Watches"]
  belongs_to :friend
end
