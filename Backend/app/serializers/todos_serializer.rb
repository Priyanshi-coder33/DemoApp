class TodosSerializer < ActiveModel::Serializer
  attributes :id, :todo_text, :due_date, :status
end
