class Voter < ApplicationRecord
  before_create :create_token
  has_many :votes

  private

  def create_token
    self.token = SecureRandom.hex
  end
end
