class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.string :title, unique: true, null: false

      t.timestamps
    end
  end
end
