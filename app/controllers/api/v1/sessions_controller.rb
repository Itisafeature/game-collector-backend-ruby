class Api::V1::SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user.try(:authenticate, params[:password])
      render json: {status: "success"}, status: 200
    else
      render json: {errors: "Invalid username or password"}, status: 400
    end
  end
end
