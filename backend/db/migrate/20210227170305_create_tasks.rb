class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :type
      t.integer :price
      t.integer :userid
      t.integer :professionalid

      t.timestamps
    end
  end
end
