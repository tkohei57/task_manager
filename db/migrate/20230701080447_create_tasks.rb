class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.string :address, null: false
      t.integer :genre_id, null: false
      t.boolean :completed, null: false, default: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
