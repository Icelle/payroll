require 'csv'

class Employee
  def initialize(last_name, first_name, position, base_salary)
    @last_name   = last_name
    @first_name  = first_name
    @position    = position
    @base_salary = base_salary
    @tax_rate    = 0.3
  end

  def self.load_employees(filename = './assets/employees.csv')
    employees = []
    csv_table = CSV.table(filename).to_a
    csv_table.delete_at(0)
    csv_table.each do |row|
      last_name          = row[0]
      first_name         = row[1]
      position           = row[2]
      base_salary        = row[3]
      commission_rate    = row[4]
      quota_bonus        = row[5]
      quota_sales_target = row[6]
      owner_bonus        = row[7]
      owner_sales_target = row[8]
    end
    employees
  end

  def net_pay

  end

  def gross_salary

  end

end



