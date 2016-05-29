class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :user_id
      t.string :role_id
      t.string :name

      t.timestamps

    end
  end
end
