class PostsController < ApplicationController
  
  def show
    @post = Post.find(params[:id])
  end
  
  def search
    @results = Post.where("title like ? or text like ?", "%#{params[:query]}%", "%#{params[:query]}%")
  end
  
end

