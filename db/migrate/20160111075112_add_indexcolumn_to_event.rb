class AddIndexcolumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :rest_member, :integer
  end
end
