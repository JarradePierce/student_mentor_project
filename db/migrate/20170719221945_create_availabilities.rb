class CreateAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :availabilities do |t|
      t.datetime :start_time, null: false
      t.integer :mentor_id, null: false
      t.integer :appointment_id

      t.timestamps
    end
  end
end
