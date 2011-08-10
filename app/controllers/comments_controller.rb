class CommentsController < ApplicationController
  
  skip_before_filter :require_signin, :only => [:create]
  
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to post_path(@post)
  end
  
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to(admin_posts_path)
  end
  
end
