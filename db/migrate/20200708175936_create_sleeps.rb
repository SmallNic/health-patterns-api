class CreateSleeps < ActiveRecord::Migration[5.2]
  def change
    create_table :sleeps do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :minutes_asleep
      t.integer :minutes_awake
      t.integer :num_awakenings
      t.integer :time_in_bed
      t.integer :minutes_rem
      t.integer :minutes_light
      t.integer :minutes_deep

      t.timestamps
    end
  end
end
