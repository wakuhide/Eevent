class AddTypecolumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :num, :integer
  end
end
