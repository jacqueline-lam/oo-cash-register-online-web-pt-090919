require 'pry'

class CashRegister
  attr_accessor :total, :discount, :add_item #return current total when enter instance.total
  
  def initialize(discount = 0.20)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += ( price * quantity)
  end
  
  def apply_discount
    # binding.pry
    total_in_float = @total * (1 - @discount)
    @total = total_in_float.to_i
  end
  
end
