class AddColumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :member, :integer
  end
end
