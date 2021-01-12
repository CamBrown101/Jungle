class User < ActiveRecord::Base
  has_secure_password
  validates :password, confirmation: true
  validates :password, length: {minimum: 5}
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

  def authenticate_with_credentials(email, password)
    user = User.find_by_email(:email)
    if user && user.authenticate(:password)
     return user
    end
  end
end

