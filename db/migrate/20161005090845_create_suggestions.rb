class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :comment, null: false
      t.string :author, default: 'Anonymous'
      t.timestamps(null: false)
    end
  end
end
