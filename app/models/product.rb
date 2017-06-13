class Product < ApplicationRecord
  has_many :line_items
  has_many :sales, :through => :line_items
  belongs_to :provider

  validates :code, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :purchasePrice, presence: true
  validates :netPrice, presence: true
  validates :salePrice, presence: true
  validates :stock, presence: true
end
