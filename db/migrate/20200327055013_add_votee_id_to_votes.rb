class AddVoteeIdToVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :votee_id, :integer, null: false
  end
end
