require 'pry'

class CashRegister
  attr_accessor :total, :discount, :add_item #return current total when enter instance.total
  
  @@items = []
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += ( price * quantity)
    @@items << title
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
    @@items 
  end
  
  ##  describe '#items' do
    it 'returns an array containing all items that have been added' do
      new_register = CashRegister.new
      new_register.add_item("eggs", 1.99)
      new_register.add_item("tomato", 1.76, 3)
      expect(new_register.items).to eq(["eggs", "tomato", "tomato", "tomato"])
    end
  
 

end
