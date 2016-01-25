class AddMaritalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :marital, :string, :limit => 11
  end
end
