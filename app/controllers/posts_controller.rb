class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

    def create
      # Post.create(title: params[:post][:title], description: params[:post][:description])
      # redirect_to posts_path
        @post = Post.new
        @post.title = params[:title]
        @post.description = params[:description]
        @post.save
        redirect_to post_path(@post)
    end
end
