class User < ActiveRecord::Base
  include BCrypt
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
  has_many :surveys
  has_many :questions, through: :surveys
  has_many :surveys, through: :statistics
  has_many :statistics, through: :surveys
  has_many :surveys_answered, :foreign_key => :responder_id, :class_name => "Survey"

  def password
    @password ||= Password.new(password_digest)
  end

 def password=(user_password)
   @password = Password.create(user_password)
   self.password_digest = @password
 end

  #método de autenticación
  def self.authenticate(email, user_password)
    user = User.find_by(email: email)
    if user && (user.password == user_password)
      return user
    else
      nil
    end
  end

end
