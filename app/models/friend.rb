class Friend < ApplicationRecord
  belongs_to :user
  has_many :product_categories
  has_one_attached :avatar
end
