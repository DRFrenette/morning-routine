class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true

  def increment_sign_in_count
    increment! :sign_in_count
  end
end
