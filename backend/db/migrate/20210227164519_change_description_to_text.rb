class ChangeDescriptionToText < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :description, :text
  end
end
