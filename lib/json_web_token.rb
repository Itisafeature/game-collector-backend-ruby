class JsonWebToken
  JWT_SECRET = Rails.application.credentials.secret_key_base
  
  def self.encode(payload)
    payload[:exp] = 2.days.from_now.to_i
    JWT.encode(payload, JWT_SECRET)
  end 

  def self.decode(token)
    begin
      HashWithIndifferentAccess.new(JWT.decode(token, JWT_SECRET)[0])
    rescue JWT::DecodeError
      false
    end
  end
end