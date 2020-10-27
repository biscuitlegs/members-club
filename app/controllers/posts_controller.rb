class PostsController < ApplicationController
  before_action :get_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
    @post = Post.new
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.member_id = current_member.id

    if @post.save
      redirect_to posts_path, notice: "Post successfully created."
    else
      flash.now[:alert] = "Woops! There was an error saving your Post."
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Post successfully updated."
    else
      flash.now[:alert] = "Woops! There was an error updating your Post."
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path, notice: "Post successfully deleted."
    else
      redirect_to @post, alert: "Woops! There was an error deleting your Post."
    end
  end


  private

  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:body)
  end
end
