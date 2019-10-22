class CashRegister
  attr_accessor :total, :discount, :price, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @price = price
    @quantity = quantity
    @total += price * quantity
  end
  
  def apply_discount
    adjusted = @price * @discount / 100
    
  end
      
      
end
