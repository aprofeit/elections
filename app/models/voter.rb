class Voter < ApplicationRecord
  before_create :create_token
  has_many :votes

  def invite_link
    if Rails.env.production?
      "https://elections.profeit.com/votes/new?token=#{token}"
    else
      "http://localhost:3000/votes/new?token=#{token}"
    end
  end

  private

  def create_token
    self.token = SecureRandom.hex
  end
end
