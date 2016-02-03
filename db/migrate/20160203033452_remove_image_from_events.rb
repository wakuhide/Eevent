class RemoveImageFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :image_url, :text
  end
end
