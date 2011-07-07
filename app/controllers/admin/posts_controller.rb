class Admin::PostsController < ApplicationController

  def index
    @posts = Post.find(:all, :order => "id DESC")
  end
  
  def new
    @post = Post.new
    @title = "New Post"
  end
  
  def create
    @post = Post.new(params[:post])#need instance variable here so that values remain if render new
    if @post.save
      flash[:success] = "Post saved!"
      redirect_to(admin_posts_path)
    else
      render(:new)
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @title = "Edit Post"
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:success] = "Post updated."
      redirect_to(admin_posts_path)
    else
      render(:edit)
    end
  end
  
  def delete
    @post = Post.find(params[:id]).destroy
    flash[:success] = "Post destroyed!"
    redirect_to(admin_posts_path)
  end
end