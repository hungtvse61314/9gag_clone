  class PostsController < ApplicationController
    before_filter :authenticate_user!, only: [:new, :create]
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    def index
    @posts = Post.all.order('Created_at DESC')

    end
    def new

    end

    def create
      @post = Post.new(post_params)
      @post.save

      redirect_to @post

    end
    def show
      @post = Post.find(params[:id])
    #redirect_to root_path
    end

    def set_post
      @post = Post.find(params[:id])
    end
  def post_params
    params.require(:post).permit(:title,:image).merge(user_id: current_user.id)
  end
end
