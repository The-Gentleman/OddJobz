class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :need, :description
end
