class Api::V1::CommentsController < ApplicationController
    #! skipping just for testing purposes, please delete after
    skip_before_action :authorized

    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find_by(id: params[:id])
        render json: comment
    end

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    def update
        comment = Comment.find_by(id: params[:id])
        comment.update(comment_params)
        render json: comment
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :post_id, :user_id)
    end
end