class PostsController < ApplicationController

  def index
  end

  def new
    @post = Post.new    
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path #temp redirect
  end

  private
    def post_params
      params.required(:post).permit(:image, :caption)
    end
end
