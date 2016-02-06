class AddNameToNumbers < ActiveRecord::Migration
  def change
    add_column :numbers, :name, :string
  end
end
