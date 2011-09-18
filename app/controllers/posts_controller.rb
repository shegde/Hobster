class PostsController < ApplicationController
  
  # before_filter :authenticate
  
  def new
    @post = Post.new
    
    respond_to do |format|
      format.html # new.html.erb
    end
  end
  
  def create

  end
  
  def destroy
    
  end
end
