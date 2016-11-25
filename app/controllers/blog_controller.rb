class BlogController < ApplicationController
  def list
    @posts = Post.all
  end

  def intro
  end

  def show
    @post = Post.find(params[:id])
  end

  def write
  end

  def create
    @post = Post.new(title: params[:title], content: params[:content])
    @post.save
    redirect_to "/blog/#{@post.id}"
  end

  def login
  end
end
