class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :skill_id
      t.string :role_id
      t.string :name

      t.timestamps

    end
  end
end
