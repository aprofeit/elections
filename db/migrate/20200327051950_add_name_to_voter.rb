class AddNameToVoter < ActiveRecord::Migration[6.0]
  def change
    add_column :voters, :name, :string, unique: true, null: false
  end
end
