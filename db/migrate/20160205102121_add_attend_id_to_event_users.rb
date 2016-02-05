class AddAttendIdToEventUsers < ActiveRecord::Migration
  def change
    add_column :event_users, :attend_id, :integer
  end
end
