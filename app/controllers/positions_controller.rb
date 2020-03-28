class PositionsController < ApplicationController
  def new
    @position = Position.new
  end

  def create
    position = Position.new(position_params)

    if position.save
      redirect_to root_url(notice: 'Created position!')
    else
      redirect_to new_position_url(error: position.errors.full_messages.join(', '))
    end
  end

  def index
    @positions = Position.all
  end

  private

  def position_params
    params.require(:position).permit(:title)
  end
end
