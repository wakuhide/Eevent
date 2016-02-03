class AddCityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :city, :text
  end
end
