class PostsController < ApplicationController
  def index
    @posts = Post.all.order('Created_at DESC')

  end
  def new

  end

  def create
    @post = Post.new(params.require(:post).permit(:title,:image))
    @post.save

    redirect_to @post

  end
  def show
    @post = Post.find(params[:id])
    #redirect_to root_path
  end
end
