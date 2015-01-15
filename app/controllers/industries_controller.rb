class IndustriesController < ApplicationController

  def create
    Industry.create(ind_params)    
  end

  private

  def ind_params
    params.require(:industry).permit(:name, :description)
  end
    
end
