class Product < ApplicationRecord
  belongs_to :Supplier

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0}
  validates :description, presence: true
  validates :description, length: { in: 10..500 }
  
  def is_discounted?
    if price <= 10
      true
    else 
      false
    end
  end

  def tax
    price * 0.09
  end

  def total
    tax + price 
  end
end
