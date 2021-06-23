class Restaurant < ApplicationRecord
  belongs_to :user
  # @restaurant.user #=> user
  validates :name, presence: true
  validates :name, uniqueness: { scope: :address }
end
