class AddAddresssToUsers < ActiveRecord::Migration
  def change
    add_column :users, :addresss, :text
  end
end
