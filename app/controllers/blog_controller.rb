class BlogController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new]
  before_action :check_admin, only: [:edit, :new, :destroy]
  
  def check_admin
    if user_signed_in?
      if current_user.email != "96eric@kaist.ac.kr"
        redirect_to '/blog/list' 
      end
    end
  end
  
  def intro
  end
  def new
  end
  
  def write
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.user_id = current_user.id
    @post.save
    redirect_to '/blog/show/' + @post.id.to_s
  end
  
  def list
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/blog/list'
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:title], content: params[:content])
    redirect_to '/blog/show/' + @post.id.to_s
  end
end
