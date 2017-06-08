class CreateAttendanceStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :attendance_statuses do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
