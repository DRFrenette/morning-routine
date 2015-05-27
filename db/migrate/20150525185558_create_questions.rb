class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :body, null: false

      t.timestamps null: false
    end
    add_index :questions, :user_id
  end
end
