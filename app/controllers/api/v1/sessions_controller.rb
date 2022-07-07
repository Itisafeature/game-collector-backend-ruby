class Api::V1::SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user.try(:authenticate, params[:password])
      cookies.signed[:jwt] = {value: JsonWebToken.encode({ user_id: user.id }), httponly: true}
      render json: UserSerializer.new(user), status: 200
    else
      render json: {errors: "Invalid username or password"}, status: 400
    end
  end

  def destroy 
    cookies.delete(:jwt)
    render json: {status: "success"}, status: 200
  end

end
