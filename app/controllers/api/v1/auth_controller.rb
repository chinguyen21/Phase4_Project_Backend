class Api::V1::AuthController < ApplicationController

  def login 
    user = User.find_by(email: user_login_params[:email])
    if user && user.authenticate(user_login_params[:password])
      token = JWT.encode({user_id: user.id}, "chi_avelon")
      render json: {user: user, token: token}, status: :accepted
    else 
      render json: {message: ["Invalid username or password"]}, status: :unauthorized
    end
  end


  private

  def user_login_params
    params.permit(:email, :password)
  end

end
