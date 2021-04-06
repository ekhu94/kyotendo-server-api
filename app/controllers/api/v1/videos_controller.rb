class Api::V1::VideosController < ApplicationController
    #! skipping just for testing purposes, please delete after
    skip_before_action :authorized

    def index
        videos = Video.all
        render json: videos
    end

    def show
        video = Video.find_by(id: params[:id])
        render json: video
    end

    def create
        video = Video.create(video_params)
        render json: video
    end

    private

    def video_params
        params.require(:videos).permit(:title, :description, :video_url, :views, :user_id, :game_id)
    end
end