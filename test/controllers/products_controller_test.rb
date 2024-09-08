require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  
  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length 
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { name: "cake", price: -300, image_url: "http://www.example.com:80products.json", description: "I love cake", in_stock: 1 }
      assert_response 200
    end
    
    assert_difference "Product.count", 0 do
      post "products.json", params: {}
      assert_response 422
    end
  end

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "tax", "total", "is_discounted?", "image_url", "description", "in_stock"], data.keys
  end

#   test "update" do
#     product = Product.first
#     patch "/products/#{product.}"
end
