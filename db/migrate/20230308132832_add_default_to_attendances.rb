class AddDefaultToAttendances < ActiveRecord::Migration[7.0]
  def change
    remove_column :attendances, :status
    add_column :attendances, :status, :string, default: :pending
  end
end
