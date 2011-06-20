class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
    @title = "Post Title"
    @text = "This is post test text."
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to("/")
    else
      render(:new)
    end
  end
  
end
