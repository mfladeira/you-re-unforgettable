class Friend < ApplicationRecord
  belongs_to :user
  has_many :product_categories, dependent: :destroy
  has_one_attached :avatar
  has_many :gifts, dependent: :destroy

end
