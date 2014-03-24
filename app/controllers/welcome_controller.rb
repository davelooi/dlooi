class WelcomeController < ApplicationController

  def about
    @dlooi = User.find_by_uid("dlooi")
    @slseow = User.find_by_uid("slseow")
  end

end
