class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.datetime :date
      t.integer :calories_burned
      t.integer :steps
      t.integer :distance
      t.integer :floors
      t.integer :minutes_sedentary
      t.integer :minutes_lightly_active
      t.integer :minutes_fairly_active
      t.integer :minutes_very_active
      t.integer :activity_calories

      t.timestamps
    end
  end
end
