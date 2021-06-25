class Restaurant < ApplicationRecord
  belongs_to :user
  # @restaurant.user #=> user

  has_many_attached :photos
  
  validates :name, presence: true
  # validates :name, uniqueness: { scope: :address }
end
