class Api::V1::UsersController < ApplicationController
 
  def create 
    user = User.create(user_params)
    if user.valid?
      token = JWT.encode({user_id: user.id}, "chi_avelon")
      render json: {user: UserSerializer.new(user).to_serialized_json, token: token}, status: :created
    else 
      render json: {message: user.errors.full_messages}, status: :not_acceptable
    end
  end

  def show 
    user = User.find(params[:id])
    render json: UserSerializer.new(user).to_serialized_json

  end

  def find
    if params[:token]
      user_id = JWT.decode(params[:token], "chi_avelon")[0]["user_id"]
      user = User.find(user_id)
      render json: UserSerializer.new(user).to_serialized_json, status: :ok
    else
      render json: {}
    end
  end

  private 

  def user_params
    params.permit(:email, :password, :password_confirmation, :name, :age, :gender, :target_calories)
  end
end

