# == Schema Information
#
# Table name: event_types
#
#  id         :integer          not null, primary key
#  name       :string
#  goal       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EventType < ActiveRecord::Base
  has_many :events

  #imagine decorator
  def summarize
    history_data = history
    {total: events.count, goal: self.goal, name: self.name, history: {data: history_data.map(&:last), labels: history_data.map(&:first)}}
  end

  def history
    events.group('date(created_at)').pluck('date(created_at), count(*)')
  end

end
