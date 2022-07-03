class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.integer :timezone, null: false, default: 0
      t.string :description, null: false

      t.timestamps
    end
  end
end
