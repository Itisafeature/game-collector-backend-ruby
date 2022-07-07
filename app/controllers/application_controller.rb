class ApplicationController < ActionController::API
  include ActionController::Cookies

  def authorized
    if !JsonWebToken.decode(cookies.signed[:jwt])
      render json: { error: "Please log in" }, status: :unauthorized
    end
  end
end
