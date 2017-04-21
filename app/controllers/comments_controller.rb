class CommentsController < ApplicationController
  def index
    @comments = Comment.all

  end
  def new

  end
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    redirect_to root_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
