class CommentsController < ApplicationController
  def index

  end
  def create
    @post = Post.find(params[:ids])
    @comment = @post.comments.create(params[:comment].permit(:body).merge(user_id: current_user.id,post_id:current_post.id))
    
    redirect_to root_path(@post)
  end
end
