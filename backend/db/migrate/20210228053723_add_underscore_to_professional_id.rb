class AddUnderscoreToProfessionalId < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :professionalid, :professional_id
  end
end
