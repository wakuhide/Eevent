class AddTelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :TEL, :string, :limit => 11
  end
end
