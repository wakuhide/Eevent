class AddFormcolumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :job, :string
    add_column :users, :fullname, :string
    add_column :users, :gender, :integer
    add_column :users, :message, :text
    add_column :users, :age, :integer
    add_column :users, :TEL, :integer
    add_column :users, :event, :string
    add_column :users, :event_time, :time
  end
end
