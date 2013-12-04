require 'csv'

class Sale
  def initialize
    load_sales_data
  end

  def load_sales_data(filename = './assets/sales_data.csv')
    sales_data = []
    csv_table = CSV.table(filename).to_a
    csv_table.delete_at(0)
    csv_table.each do |row|
      last_name          = row[0]
      gross_sale_value   = row[1]
  end
    sales_data

end
