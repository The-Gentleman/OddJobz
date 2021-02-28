class ProfessionalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :profession, :stars
end
