class CreateProfessionals < ActiveRecord::Migration[6.0]
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :profession
      t.integer :stars

      t.timestamps
    end
  end
end
