module GraphHelper
  def daily_journal_graph_data
    data = []
    hash = self.journals.group_by {|j| j.created_at.strftime("%m/%d/%Y")}
    hash.each do |day, journals|
      data << {
        "date": day,
        "column-1": journals.map(&:word_count).sum
      }
    end
    data
  end

  def daily_journal_graph_titles
    {
      "graph_title" => "Word Count by Day",
      "axis_title" => "Words",
      "id" => "journal-graph-title",
      "legend" => "Word Count"
    }
  end

  def daily_meditation_graph_data
    data = []
    hash = self.meditations.group_by {|m| m.created_at.strftime("%m/%d/%Y")}
    hash.each do |day, meditations|
      data << {
        "date": day,
        "column-1": meditations.map{|m| m.duration[:minutes]}.sum
      }
    end
    data
  end

  def daily_meditation_graph_titles
    {
      "graph_title" => "Meditations by Day",
      "axis_title" => "Minutes Spent Meditating",
      "id" => "meditation-graph-title",
      "legend" => "Minutes"
    }
  end
end
