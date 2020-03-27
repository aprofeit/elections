class AddPositionIdToVotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :votes, :position, null: false, foreign_key: true
  end
end
