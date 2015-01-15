class CreatePayslips < ActiveRecord::Migration
  def change
    create_table :payslips do |t|
      t.string :first_name
      t.string :last_name
      t.string :annual_salary
      t.string :super_rate
      t.string :payment_start_date

      t.timestamps
    end
  end
end
