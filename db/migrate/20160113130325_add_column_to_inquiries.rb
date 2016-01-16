class AddColumnToInquiries < ActiveRecord::Migration
  def change
    add_column :inquiries, :email, :string
    add_column :inquiries, :name, :string
    add_column :inquiries, :message, :text
  end
end
