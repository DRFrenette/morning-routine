class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true

  has_many :questions

  def increment_sign_in_count
    increment! :sign_in_count
  end

  def max_questions
    5
  end

  def can_create_questions?
    self.questions.size < self.max_questions
  end
end
