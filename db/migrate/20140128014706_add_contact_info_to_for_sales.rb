class AddContactInfoToForSales < ActiveRecord::Migration
  def change
    add_column :for_sales, :contact_info, :string
  end
end
