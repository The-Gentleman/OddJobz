class AddUnderscoreToUserId < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :userid, :user_id
  end
end
