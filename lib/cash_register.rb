require 'pry'

class CashRegister
  attr_accessor :total, :discount, :add_item, :items, :last_trans #return current total when enter instance.total

  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = [] # contains a array of hashes of all transactions (title, price, quantity)
  end
  
  def add_item(title, price, quantity = 1)
    item_data = {
      title: title,
      price: price,
      quantity: quantity
    }
    @items << item_data
    @total += (price * quantity)
    self.last_trans = item_data
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
  
  # Returns an array of strings detailing the titles of the items
  def items
    return @items.map { |item_data| item_data[:title] }
  end
  
  # cash_register.add_item("tomato", 1.76, 2)
  # expect{cash_register.void_last_transaction}.to change{cash_register.total}.from(3.52).to(0.0)
  
  def void_last_transaction
    @total -= self.last_trans 
    # @items.pop if @items != []
    # #return total to 0.0 if all items removed
    # if @items = [] 
    #   @total = 0.0  
    # end
    # return @total
    
  
  end

end
