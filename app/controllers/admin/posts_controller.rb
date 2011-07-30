class Admin::PostsController < ApplicationController

  layout 'admin'
  
  def index
    @posts = Post.find(:all, :order => "id DESC")
  end

  def show
    @post = Post.find_by_id(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:success] = "Post saved!"
      redirect_to(admin_posts_path)
    else
      render(:new)
    end
  end
  
  def edit
    @post = Post.find_by_id(params[:id])
    render(:new)
  end
  
  def update
    params[:post][:delete_photo] = 0 if params[:post][:photo].present?
    @post = Post.find_by_id(params[:id])
    if @post.update_attributes(params[:post])
      flash[:success] = "Post updated."
      redirect_to(admin_posts_path)
    else
      render(:new)
    end
  end
  
  def destroy
    Post.destroy(params[:id])
    flash[:success] = "Post destroyed!"
    redirect_to(admin_posts_path)
  end
end