class PostsController < ApplicationController
  
  def show
    @post = Post.find(params[:id])
  end
  
  def search
    @posts = Post.where("title like ? or text like ?", "%#{params[:query]}%", "%#{params[:query]}%")
    @from_recipes = params[:from]
  end
  
end

