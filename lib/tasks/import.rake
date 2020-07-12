require 'csv'

namespace :import do
  desc "Import Fitbit Data"

  task fitbit_data: :environment do
    def castStringToInt(str)
      if str.include? ","
        return str.delete(",").to_i
      elsif str == "N/A"
        return 0
      else
        return str.to_i
      end
    end

    def importActivities(file)
      CSV.foreach(file, headers: true) do |row|
        if row.length > 1 && row[0] != "Date"
          Activity.create(
            date: row[0],
            calories_burned: castStringToInt(row[1]),
            steps: castStringToInt(row[2]),
            distance: castStringToInt(row[3]),
            floors: castStringToInt(row[4]),
            minutes_sedentary: castStringToInt(row[5]),
            minutes_lightly_active: castStringToInt(row[6]),
            minutes_fairly_active: castStringToInt(row[7]),
            minutes_very_active: castStringToInt(row[8]),
            activity_calories: castStringToInt(row[9])
          )
        end
      end
    end

    def importSleep(file)
      CSV.foreach(file, headers: true) do |row|
        if row.length > 1 && row[0] != "Start Time"
          Sleep.create(
            start_time: row[0],
            end_time: row[1],
            minutes_asleep: castStringToInt(row[2]),
            minutes_awake: castStringToInt(row[3]),
            num_awakenings: castStringToInt(row[4]),
            time_in_bed: castStringToInt(row[5]),
            minutes_rem: castStringToInt(row[6]),
            minutes_light: castStringToInt(row[7]),
            minutes_deep: castStringToInt(row[8])
          )
        end
      end
    end

    Dir["public/csvs/*.csv"].each do |file|
      if file.include? "activities"
        importActivities(file)
      elsif file.include? "sleep"
        importSleep(file)
      end
    end
  end

end