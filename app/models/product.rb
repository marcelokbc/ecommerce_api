class Product < ApplicationRecord
  has_many :product_categories, dependent: :destroy
	has_many :categories, through: :product_categories
  belongs_to :productable, polymorphic: true

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
