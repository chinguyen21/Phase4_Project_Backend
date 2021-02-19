class AddMealToUserFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :user_foods, :meal, :string
    add_column :user_foods, :quantity, :integer
  end
end
