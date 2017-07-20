class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :student_id, index: true, null: false
      t.integer :topic_id, index: true, null: false
      t.integer :mentor_id, index: true, null: false

      t.timestamps
    end
  end
end
