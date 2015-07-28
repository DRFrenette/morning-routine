class Journal < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  belongs_to :user

  def word_count
    self.body.split(" ").length
  end

  def preview
    self.body.truncate(50, separator: ' ')
  end

  def date_written
    self.created_at.strftime("%m/%d/%Y")
  end
end
