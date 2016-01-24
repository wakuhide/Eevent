class AddSexToInfos < ActiveRecord::Migration
  def change
    add_column :users, :sex, :integer
  end
end
