class Sleep < ApplicationRecord
  validates_presence_of :start_time, :end_time, :minutes_asleep, :minutes_awake, 
    :num_awakenings, :time_in_bed, :minutes_rem, :minutes_light, :minutes_deep

end
