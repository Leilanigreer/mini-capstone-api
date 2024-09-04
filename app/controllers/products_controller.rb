class ProductsController < ApplicationController

  def index 
    @products = Product.all 
    render template: "products/index"
  end
  
  def create 
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
      in_stock: params[:in_stock]
    )
    @product.save
    render template: "products/show"
  end 

  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  # def create_hardcoded
  
  #   @product = Product.create(name: "mango", price: 4, image_url: "https://www.svz.com/wp-content/uploads/2018/05/Mango.jpg", description: "Mangoes are egg-shaped or pear-shaped, and can be round, oval, heart, or kidney shaped. They are usually 3–5 inches long and have a thin, waxy skin that is red and green when unripe, and turns yellow, orange, purple, or red as it matures. The flesh is bright orange and soft, with a large, flat pit in the middle.", in_stock: 12)
    
  #   render template: "products/show"
  # end


  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @products.name,
    @product.price = params[:price] || @product.price,
    @product.image_url = params[:image_url] || @product.image_url,
    @product.description = params[:description] || @product.description,
    @product.in_stock = params[:in_stock] || @product.in_stock
    @product.save
    render template: "products/show"
  end

end
