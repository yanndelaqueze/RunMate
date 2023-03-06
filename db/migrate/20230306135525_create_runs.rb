class CreateRuns < ActiveRecord::Migration[7.0]
  def change
    create_table :runs do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :level
      t.integer :distance
      t.integer :max_person
      t.string :meeting_point
      t.string :circuit
      t.datetime :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
