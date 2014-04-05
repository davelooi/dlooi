class ProfilesController < ApplicationController

  def show
    @user = Profile.find_by_uid(params[:uid]) || not_found
    respond_to do |format|
      format.html 
    end
  end

  def about
  end

end
