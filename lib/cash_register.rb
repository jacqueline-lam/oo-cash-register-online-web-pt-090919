require 'pry'

class CashRegister
  attr_accessor :total, :discount, :add_item, :items, :last_trans #return current total when enter instance.total

  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += ( price * quantity)
    quantity.times { @items << title }
    self.last_trans = price
  end
  
  # tip: can call instance method inside another instnace method
  # to call @total, use self.total inside another #method
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
    @items
  end
  
  def void_last_transaction
    @total -= self.last_trans 
    #return total to 0.0 if all items removed
    if @items = [] 
      @total = 0.0  
    end
    return @total
      # cash_register.add_item("tomato", 1.76, 2)
      # expect{cash_register.void_last_transaction}.to change{cash_register.total}.from(3.52).to(0.0)
  end

end
