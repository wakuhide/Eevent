class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string     :title
      t.text       :image_url
      t.text       :detail
      t.integer    :user_id
      t.datetime    :created_at
      t.datetime    :updated_at
      t.timestamps
    end
  end
end
