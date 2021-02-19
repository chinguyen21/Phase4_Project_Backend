require 'open-uri'
require 'net/http'

class UserFoodsController < ApplicationController

  def create 
    user_food = UserFood.create(user_foods_params)
    if user_food.valid?
      render json: {
        user_food: UserFoodSerializer.new(user_food).to_serialized_json,
        message: "You just gained #{user_food.food.calories * user_food.quantity} calories"}, status: :created
    else 
      render json: {message: "Please choose all fields to create food log"}, status: :not_acceptable
    end
  end

  private 

  def user_foods_params 
    params.require(:user_food).permit(:user_id, :food_id, :meal, :quantity, :date)
  end
end
