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
    if @discount > 0 
      @total -= adjusted
      return "After the discount, the total comes to $#{@total}."
    elsif @discount <= 0  
      return "There is no discount to apply."
    end
  end
      
      
end
