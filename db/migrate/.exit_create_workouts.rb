class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :weight
      t.string :exercise
      t.integer :repetition
      t.integer :time

      t.timestamps null: false
    end
  end
end
