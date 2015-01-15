class Payslip < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      payslip_hash = row.to_hash # exclude the price field
      Payslip.create!(payslip_hash)
    end # end CSV.foreach
  end
end
