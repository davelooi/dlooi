class UsersController < ApplicationController

  def show
    @user = User.find_by_uid(params[:uid])
    respond_to do |format|
      format.html 
    end
  end
  
end
