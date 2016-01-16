class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.string :cached_satisfaction_list
      t.string :cached_trigger_list
      t.text :body
      t.boolean :template

      t.timestamps null: false
    end
  end
end
