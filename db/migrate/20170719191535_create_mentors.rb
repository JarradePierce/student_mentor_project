class CreateMentors < ActiveRecord::Migration[5.1]
  def change
    create_table :mentors do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :phase

      t.timestamps
    end
  end
end
