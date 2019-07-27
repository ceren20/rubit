class PostsController < ApplicationController
  def index
    @posts = Post.latest_posts
  end

  def show
  end

  def new
    @post=Post.new
    @user=User.new
  end

  def create
    render plain: params.inspect
  end
end
