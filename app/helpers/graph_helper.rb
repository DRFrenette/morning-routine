module GraphHelper
  def daily_journal_graph_data
    data = []
    jh = self.journals.group_by{|j| j.created_at.strftime("%m/%d/%Y")}
    jh.each do |day, journals|
      data << {
        "date": day,
        "column-1": journals.map(&:word_count).sum
      }
    end
    data
  end

  def daily_meditation_graph_data
  end
end
