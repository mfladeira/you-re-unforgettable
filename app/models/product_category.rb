class ProductCategory < ApplicationRecord
  CATEGORIES = ["Video Game", "House", "Cars", "Kitchen"]

  belongs_to :friend
end
