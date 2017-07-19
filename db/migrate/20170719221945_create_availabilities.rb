class CreateAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :availabilities do |t|
      t.datetime :start_time
      t.integer :mentor_id
      t.integer :appointment_id

      t.timestamps
    end
  end
end
