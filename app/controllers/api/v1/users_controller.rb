class Api::V1::UsersController < ApplicationController
  wrap_parameters :user, include: [:username, :email, :password]

  def create 
    user = User.new(user_params)
    if user.save 
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
