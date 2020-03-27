class AddVotedToVoters < ActiveRecord::Migration[6.0]
  def change
    add_column :voters, :voted, :bool, default: false
  end
end
