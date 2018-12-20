class PostsController < ApplicationController

  #runs 'find_post' method for methods 'show', 'edit', and 'update'
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  def index
  	#@posts = Post.all
  	@posts = Post.all.order("created_at DESC")
  end

  def new
  	#@post is an instance variable
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
  		redirect_to @post
  	else
  		render 'new'
  	end
  end

  def show

  end

  def edit

  end

  def update
  	if @post.update(post_params)
  		redirect_to @post
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@post.destroy
  	redirect_to root_path
  end
  #anything below private isn't accessible outside of posts_controller.rb
  private
  def find_post
  	@post = Post.find(params[:id])
  end

  def post_params
  	params.require(:post).permit(:title, :body);
  end
end
