class UserFoodSerializer

  def initialize(user_food_object)
    @user_food = user_food_object
  end

  def to_serialized_json
    @user_food.to_json(
            :include => {
                :food => {:except => [:created_at, :updated_at]}
                    },
            :except => [:created_at, :updated_at]
            )

  end
  
end 