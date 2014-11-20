class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :content
      t.date :due_date

      t.timestamps
    end
  end
end
