class RemoveRunFromAttendances < ActiveRecord::Migration[7.0]
  def change
    remove_reference :attendances, :run, null: false, foreign_key: true
  end
end
