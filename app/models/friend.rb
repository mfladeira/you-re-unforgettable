class Friend < ApplicationRecord
  belongs_to :user
  has_many :product_categories
end
