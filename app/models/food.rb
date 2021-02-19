

class Food < ApplicationRecord
  has_many :user_foods
  has_many :users, through: :user_foods

  

end
