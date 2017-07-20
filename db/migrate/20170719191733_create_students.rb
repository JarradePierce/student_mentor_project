class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.integer :phase, null: false

      t.timestamps
    end
  end
end
