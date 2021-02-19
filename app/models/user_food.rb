class UserFood < ApplicationRecord
  belongs_to :food
  belongs_to :user

  validates :user_id, :food_id, :meal, :date, :quantity, presence: true
end
