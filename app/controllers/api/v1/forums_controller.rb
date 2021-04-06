class Api::V1::ForumsController < ApplicationController
    #! skipping just for testing purposes, please delete after
    skip_before_action :authorized

    def index
        forums = Forum.all
        render json: forums
    end

    def create
        forum = Forum.create(forum_params)
        render json: forum
    end

    private

    def forum_params
        params.require(:forums).permit(:name)
    end
end