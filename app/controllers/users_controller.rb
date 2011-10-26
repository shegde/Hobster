class UsersController < ApplicationController
  def show
    @user = !params[:id].nil? ? User.find(params[:id]) : current_user
  end
end
