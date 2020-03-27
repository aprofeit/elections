class VotesController < ApplicationController
  before_action :ensure_valid_token

  def new
    if current_user.voted?
      flash[:notice] = "Feel free to look around, but you can only vote once :)"
    end

    @positions = Position.all
    @voters = Voter.all
  end

  def create
    if selection_params.keys.size != Position.count || selection_params.values.any?(&:blank?)
      return redirect_to new_vote_url(params: { token: params[:token] }), alert: 'You must select a candidate for all positions'
    end

    debugger
    if current_user.voted?
      return redirect_to new_vote_url(params: { token: params[:token] }), alert: "Can only vote once #{current_user.name}, tsk tsk"
    end

    selection_params.each do |(position, votee)|
      position_id = position.to_i
      votee_id = votee.to_i

      vote = current_user.votes.new(position_id: position_id, votee_id: votee_id)
      if vote.save
        current_user.update!(voted: true)
        return redirect_to pages_thanks_url
      else
        return redirect_to new_vote_url(params: { token: params[:token] }), alert: vote.errors.full_messages
      end
    end
  end

  private

  def selection_params
    params.require(:selections).permit!
  end

  def ensure_valid_token
    return head :forbidden unless Voter.where(token: params[:token].to_s).exists?
  end

  def current_user
    Voter.find_by(token: params[:token])
  end
end
