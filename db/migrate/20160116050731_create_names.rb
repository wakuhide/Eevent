class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :name
      t.date :date

      t.timestamps null: false
    end
  end
end
