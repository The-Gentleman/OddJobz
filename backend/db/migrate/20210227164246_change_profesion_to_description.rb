class ChangeProfesionToDescription < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :profession, :description
  end
end
