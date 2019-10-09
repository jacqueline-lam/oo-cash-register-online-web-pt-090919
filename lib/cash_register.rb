require 'pry'

class CashRegister
  attr_accessor :total, :discount, :add_item #return current total when enter instance.total
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += ( price * quantity)
  end
  
  def apply_discount
    return "There is no discount to apply." unless @discount
    discount = @total * @discount / 100 
    @total = @total - discount
    return "After the discount, the total comes to $#{@total}."
    
    # if @discount
    #   discount = @total * @discount / 100 
    #   @total = @total - discount
    #   return "After the discount, the total comes to $#{@total}."
    # else
    #   return "There is no discount to apply."
    # end
    
  end
  
  
 

end
