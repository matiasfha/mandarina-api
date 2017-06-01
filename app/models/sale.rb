class Sale < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items

  accepts_nested_attributes_for :line_items, allow_destroy: true
  accepts_nested_attributes_for :products, allow_destroy: true
end
