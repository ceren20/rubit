class PostsController < ApplicationController
  def index
    @posts = Post.latest_posts
  end

  def show
    @post=Post.find(params[:id])
  end

  def new
    @post=Post.new
    @user=User.new
  end

  def create
    @post=Post.create(posts_params)
    #render plain: params.inspect
    redirect_to @post
  end

  private
  def posts_params
    params.require(:post).permit(:body)
  end
  
end
