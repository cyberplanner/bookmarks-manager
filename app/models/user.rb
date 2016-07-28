require 'bcrypt'
class User
  include DataMapper::Resource

  property :id, Serial
  property :user_name, String
  property :email, String
  property :password_digist, String, length: 60

  def password= password
    self.password_digist = BCrypt::Password.create(password)
  end

end
