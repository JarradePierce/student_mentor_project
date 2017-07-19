class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.integer :rating
      t.text :body
      t.integer :apppointment_id
      t.string :for

      t.timestamps
    end
  end
end
