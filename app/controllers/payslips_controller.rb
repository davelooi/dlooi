class PayslipsController < ApplicationController
  def index
    @payslips = Payslip.all
  end

  def import
    begin
      Payslip.import(params[:file])
      redirect_to payslips_url, notice: "Payslips imported."
    rescue
      redirect_to payslips_url, notice: "Invalid CSV."
    end
  end

  def destroy_all
    Payslip.delete_all
    redirect_to payslips_url, notice: "All payslips cleared."
  end
end
