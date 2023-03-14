class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :read, default: false
      t.references :attendance, null: true, foreign_key: true
      t.references :message, null: true, foreign_key: true
      t.timestamps
    end
  end
end
