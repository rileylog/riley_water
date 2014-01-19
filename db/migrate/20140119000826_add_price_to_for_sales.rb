class AddPriceToForSales < ActiveRecord::Migration
  def change
    add_column :for_sales, :price, :integer
  end
end
