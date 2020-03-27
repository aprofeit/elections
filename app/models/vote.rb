class Vote < ApplicationRecord
  belongs_to :voter
  belongs_to :votee, class_name: 'Voter'
  belongs_to :position

  validates :voter_id, uniqueness: { scope: [:votee_id, :position_id] }
  validates :voter_id, presence: true
  validates :votee_id, presence: true
  validates :position_id, presence: true
end
