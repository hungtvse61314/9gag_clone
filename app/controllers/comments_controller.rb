class CommentsController < ApplicationController
  def index

  end
  def create
    @post = Post.find(params[:ids])
    @comment = @post.comments.create(params[:comment].permit(:body))

    redirect_to root_path(@post)
  end
end
