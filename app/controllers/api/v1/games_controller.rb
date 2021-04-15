class Api::V1::GamesController < ApplicationController
    #! skipping just for testing purposes, please delete after
    skip_before_action :authorized

    def index
        games = Game.all
        render json: games
    end

    def show
        game = Game.find_by(id: params[:id])
        render json: game
    end

    def create
        game = Game.create(game_params)
        render json: game
    end

    private

    def game_params
        params.require(:game).permit(:name, :rating, :img_url, :release_date, :slug)
    end
end