class Todo < ActiveRecord::Base
  has_one :category
  has_one :priority

  has_many :todo_tags
  has_many :tags, through: :todo_tags
end
