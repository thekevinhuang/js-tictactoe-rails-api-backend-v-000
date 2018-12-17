class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.new(game_params)
    render json: @game, status: 201
  end

  def update
    @game = Game.update(game_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 201
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
