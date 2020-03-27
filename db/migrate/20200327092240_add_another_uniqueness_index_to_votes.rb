class AddAnotherUniquenessIndexToVotes < ActiveRecord::Migration[6.0]
  def change
    add_index :votes, [:voter_id, :position_id], unique: true
  end
end
