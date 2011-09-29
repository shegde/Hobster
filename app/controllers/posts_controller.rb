class PostsController < ApplicationController
  
  # before_filter :authenticate
  
  def new
    @post = Post.new
    
    respond_to do |format|
      format.html # new.html.erb
    end
  end
  
  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      flash[:success] = "post created!"
      redirect_to profile_path
    else
      flash[:error] = "post not created !!!"
      render :action => 'new'
    end  
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes!(params[:post])
      flash[:success] = "post created!"
      render :action => 'show', :id => @post
    else 
      flash[:error] = "post not updated !!!"
      render :action => 'edit'
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def list
    
  end
  
  def destroy
    
  end
  
  def index
    @search = Post.search(params[:search])
    @posts = @search.all
  end
  
  def search
      @posts = Post.search(params[:search])
  end
end
