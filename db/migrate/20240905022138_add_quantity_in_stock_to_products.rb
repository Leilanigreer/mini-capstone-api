class AddQuantityInStockToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :quantity_in_stock, :integer
  end
end
