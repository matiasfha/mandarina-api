class Child < ApplicationRecord
  belongs_to :customer
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :birthdate, presence: true
end
