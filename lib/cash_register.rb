require 'pry'

class CashRegister
  attr_accessor :total, :discount, :add_item #return current total when enter instance.total
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += ( price * quantity)
    se
  end
  
  
  # tip: can call instance method inside another instnace method
  def apply_discount
    if @discount
      discount = @total * @discount / 100 
      @total = @total - discount
      return "After the discount, the total comes to $#{@total}."
    else # cash register wasn't initiailzied w/ discount
      return "There is no discount to apply."
    end
  end
  
  def items
    
  end
  
 

end
