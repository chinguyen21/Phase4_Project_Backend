class Api::V1::UsersController < ApplicationController
 
  def create 
    user = User.create(user_params)
    if user.valid?
      token = JWT.encode({user_id: user.id}, "chi_avelon")
      render json: {user: user, token: token}, status: :created
    else 
      render json: {message: user.errors.full_messages}, status: :not_acceptable
    end
  end


  private 

  def user_params
    params.permit(:email, :password, :password_confirmation, :name, :age, :gender, :target_calories)
  end
end

