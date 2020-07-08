class Activity < ApplicationRecord
  validates_presence_of :date, :calories_burned, :steps, :distance, :floors, 
    :minutes_sedentary, :minutes_lightly_active, :minutes_fairly_active, 
    :minutes_very_active, :activity_calories

end
