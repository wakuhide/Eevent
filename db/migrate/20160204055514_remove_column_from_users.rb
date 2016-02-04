class RemoveColumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :height, :integer
    remove_column :users, :addresss, :text
    remove_column :users, :fullname, :string
  end
end
