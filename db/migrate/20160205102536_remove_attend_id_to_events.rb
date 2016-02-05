class RemoveAttendIdToEvents < ActiveRecord::Migration
  def change
    remove_column :events, :attend_id, :integer
  end
end
