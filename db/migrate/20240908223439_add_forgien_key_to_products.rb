class AddForgienKeyToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :suppliers
  end
end
