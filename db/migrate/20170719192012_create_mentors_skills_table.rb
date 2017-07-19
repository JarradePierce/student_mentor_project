class CreateMentorsSkillsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :mentors_skills do |t|
      t.integer :mentor_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
