class CreateVoters < ActiveRecord::Migration[6.0]
  def change
    create_table :voters do |t|
      t.string :token, unique: true, null: false

      t.timestamps
    end
  end
end
