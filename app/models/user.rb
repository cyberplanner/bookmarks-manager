require 'bcrypt'
require 'dm-validations'

class User
  include DataMapper::Resource

  property :id, Serial
  property :user_name, String
  property :email, String
  property :password_digist, String, length: 60
  attr_accessor :password_confirmation
  attr_reader :password
  validates_confirmation_of :password


  def password=(password)
    @password = password
    self.password_digist = BCrypt::Password.create(password)
  end
end
