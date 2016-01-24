class Name < ActiveRecord::Base
  validates :name, presence: true
  validates :date, presence: true
end
