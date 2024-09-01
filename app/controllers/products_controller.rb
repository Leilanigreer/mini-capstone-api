class ProductsController < ApplicationController

  def all 
    @products = Product.all
    render template: "products/index" 
  end

  def first_product
    @product = Product.find_by(id: 1)
    render template: "products/show"
  end

  def second_product
    @product = Product.find_by(id: 2)
    render template: "products/show"
  end
end
