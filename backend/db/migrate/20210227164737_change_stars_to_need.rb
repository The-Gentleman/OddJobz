class ChangeStarsToNeed < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :stars, :need
  end
end
