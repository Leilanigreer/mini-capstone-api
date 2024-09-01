class ProductsController < ApplicationController

  def all 
    @products = Product.all
    render template: "products/index" 
  end

  def a_product
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end


end
