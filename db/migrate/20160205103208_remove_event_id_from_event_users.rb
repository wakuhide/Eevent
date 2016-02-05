class RemoveEventIdFromEventUsers < ActiveRecord::Migration
  def change
    remove_column :event_users, :event_id, :integer
  end
end
