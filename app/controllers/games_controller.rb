class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    binding.pry
    @game = Game.create(params[:state])
    render json: @game, status: 201
  end

  def update
    @game = Game.update(params[:state])
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 201
  end

  def index
    @games = Game.all
    render json: @games, status: 201
  end

  private

end
