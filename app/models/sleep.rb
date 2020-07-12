class Sleep < ApplicationRecord
  validates_presence_of :start_time, :end_time, :minutes_asleep, :minutes_awake, 
    :num_awakenings, :time_in_bed, :minutes_rem, :minutes_light, :minutes_deep

  def self.by_month(month)
    where('extract(month from start_time) = ?', month)
  end

end
