class VotesController < ApplicationController
  before_action :ensure_valid_token

  def new
    @positions = Position.all
    @voters = Voter.all
  end

  def create
  end

  private

  def ensure_valid_token
    return head :forbidden unless Voter.where(token: params[:token]).exists?
  end
end
