class CreateStrolls < ActiveRecord::Migration[7.1]
  def change
    create_table :strolls do |t|
      t.references :dogsitter, null: false, foreign_key: true
      t.references :dog, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
