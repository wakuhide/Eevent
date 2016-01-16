class AddContenttypeToEventUsers < ActiveRecord::Migration
  def change
    add_column :event_users, :content_type, :string
  end
end
