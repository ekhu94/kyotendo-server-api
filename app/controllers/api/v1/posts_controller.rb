class Api::V1::PostsController < ApplicationController
    #! skipping just for testing purposes, please delete after
    skip_before_action :authorized

    def index
        posts = Post.all
        render json: posts
    end

    def show
        post = Post.find_by(id: params[:id])
        render json: post
    end

    def create
        post = Post.create(post_params)
        render json: post
    end

    def update
        post = Post.find(params[:id])
        post.update(post_params)
        render json: post
    end

    private

    def post_params
        params.require(:post).permit(:title, :content_text, :content_url, :thumbnail, :post_type, :upvotes, :user_id, :forum_id)
    end
end
