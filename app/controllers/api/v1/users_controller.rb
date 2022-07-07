class Api::V1::UsersController < ApplicationController
  wrap_parameters :user, include: [:username, :email, :password]

  def create 
    user = User.new(user_params)
    if user.save
      cookies.signed[:jwt] = {value: JsonWebToken.encode({ user_id: user.id }), httponly: true}
      render json: user, status: 201
    else
      render json: {errors: user.errors.full_messages }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
