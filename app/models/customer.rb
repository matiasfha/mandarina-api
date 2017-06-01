class Customer < ApplicationRecord
  has_many :childs
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :email, presence: true
end
