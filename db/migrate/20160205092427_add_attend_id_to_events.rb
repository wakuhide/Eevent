class AddAttendIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :attend_id, :integer
  end
end
