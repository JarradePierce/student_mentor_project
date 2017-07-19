class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :student_id, index: true
      t.integer :topic_id, index: true
      t.integer :mentor_id, index: true

      t.timestamps
    end
  end
end
