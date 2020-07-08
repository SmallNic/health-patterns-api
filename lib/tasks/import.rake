require 'csv'

namespace :import do
  desc "Import Activites and Sleep"

  task activities_and_sleep: :environment do

    activities_data = File.join Rails.root, 'fitbit_export_activities.csv'
    sleep_data = File.join Rails.root, 'fitbit_export_sleep.csv'

    CSV.foreach(activities_data, headers:  true) do |row|
      Activity.create(
        date: row[0],
        calories_burned: row[1],
        steps: row[2],
        distance: row[3],
        floors: row[4],
        minutes_sedentary: row[5],
        minutes_lightly_active: row[6],
        minutes_fairly_active: row[7],
        minutes_very_active: row[8],
        activity_calories: row[9]
      )
    end

    CSV.foreach(sleep_data, headers:  true) do |row|
      Sleep.create(
        start_time: row[0],
        end_time: row[1],
        minutes_asleep: row[2],
        minutes_awake: row[3],
        num_awakenings: row[4],
        time_in_bed: row[5],
        minutes_rem: row[6],
        minutes_light: row[7],
        minutes_deep: row[8]
      )
    end

  end

end