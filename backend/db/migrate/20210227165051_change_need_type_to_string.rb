class ChangeNeedTypeToString < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :need, :string

  end
end
