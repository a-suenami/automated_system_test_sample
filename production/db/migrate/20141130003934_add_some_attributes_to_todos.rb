class AddSomeAttributesToTodos < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false, default: ''
    end

    create_table :priorities do |t|
      t.string :name, null: false, default: ''
    end

    change_table :todos do |t|
      t.references :category, null: false, default: 0
      t.references :priority, null: false, default: 0
      t.boolean    :alert,    null: false, default: 0
    end

    create_table :tags do |t|
      t.string :name, null: false, default: ''
    end

    create_table :todo_tags do |t|
      t.references :todo, null: false, default: 0
      t.references :tag,  null: false, default: 0
    end
  end
end
