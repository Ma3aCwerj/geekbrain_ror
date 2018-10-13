class PostsController < ApplicationController
  before_action :set_post, only: :show

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.includes(:user).page(params[:page]).per(10)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @comments = @post.comments.page(params[:page]).per(5)
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end
end
