require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "can create vote" do
    voter = Voter.first
    votee = Voter.last

    assert_difference 'Vote.count' do
      voter.votes.create!(votee: votee, position: Position.first)
    end
  end

  test "cannot create multiple votes for same person for the same position" do
    voter = Voter.first
    votee = Voter.last

    voter.votes.create!(votee: votee, position: Position.first)
    assert_raise do
      voter.votes.create!(votee: votee, position: Position.first)
    end
  end

  test "can vote for multiple people for different positions" do
    voter = Voter.first
    votee = Voter.last

    assert_difference 'Vote.count', 2 do
      voter.votes.create!(votee: votee, position: Position.first)
      voter.votes.create!(votee: votee, position: Position.last)
    end
  end

  test "can vote for yourself" do
    voter = Voter.first
    votee = Voter.first

    assert_difference 'Vote.count' do
      voter.votes.create!(votee: votee, position: Position.first)
    end
  end
end
