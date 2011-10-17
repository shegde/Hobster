class SessionsController < ApplicationController
  def create
    # render :text => request.env['omniauth.auth'].inspect
    auth = request.env['omniauth.auth']
    unless @auth = Authorization.find_from_hash(auth)
      # Create a new user or add an auth to existing user, depending on
      # whether there is already a user signed in.
      @auth = Authorization.create_from_hash(auth, current_user)
    end
    # Log the authorizing user in.
    self.current_user = @auth.user
    
    # render :text => "Welcome, #{current_user.name}."
    flash.now[:success] = "Welcome, #{current_user.name}."
    redirect_to root_path
  end
  
  def failure
    # render :text => "cannot connect to server! Please try again."
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  
end
