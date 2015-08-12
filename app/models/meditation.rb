class Meditation < ActiveRecord::Base
  validates_presence_of :start_time
  validates_presence_of :end_time
  validates_presence_of :user_id

  belongs_to :user

  def table_date
    self.created_at.
      strftime("%A, %B #{self.created_at.strftime("%e").to_i.ordinalize}, %Y")
  end

  def duration
    minutes = (start_time - end_time) / 60
    seconds = (start_time - end_time) % 60
    "#{minutes} minutes and #{seconds} seconds"
  end
end
