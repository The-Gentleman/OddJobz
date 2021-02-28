class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :price, :user_id, :professional_id
end
