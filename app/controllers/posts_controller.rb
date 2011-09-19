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
      flash[:error] = "post not created!!!"
      render :action => 'new'
    end  
  end
  
  def edit
    
  end
  
  def show
    @post = Post.find(params[:id])

  end
  
  def destroy
    
  end
end
