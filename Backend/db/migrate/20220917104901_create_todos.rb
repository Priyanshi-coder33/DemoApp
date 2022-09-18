class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :todo_text
      t.string :due_date
      t.boolean :status
      t.timestamps
    end
  end
end
