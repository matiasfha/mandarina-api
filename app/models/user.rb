class User < ApplicationRecord
  # encrypt password
  has_secure_password

  has_many :sales
  belongs_to :role
  
  validates :rut, presence: true, uniqueness: true
  validates_presence_of :firstName, :lastName, :email, :password_digest

  def self.from_token_payload payload
    payload['sub']
  end
  
end
