class UsersController < ApplicationController

  def show
    @user = User.find_by_uid(params[:uid])
    respond_to do |format|
      format.html 
    end
  end

  def about
    @dlooi = User.find_by_uid("dlooi")
    @slseow = User.find_by_uid("slseow")
  end
  
end
