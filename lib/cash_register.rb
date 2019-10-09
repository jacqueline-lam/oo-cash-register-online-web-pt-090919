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
    binding.pry
    
    if @discount
      discount = @total * @discount / 100 
      @total = @total - discount
      puts "After the discount, the total comes to $#{@total}."
    else
      puts "There is no discount to apply."
    end
    
  end
  
  
  # context 'the cash register was initialized with an employee discount' do
  #     it 'applies the discount to the total price' do
  #       cash_register_with_discount.add_item("macbook air", 1000)
  #       cash_register_with_discount.apply_discount
  #       expect(cash_register_with_discount.total).to eq(800)
  #     end

  #     it 'returns success message with updated total' do
  #       cash_register_with_discount.add_item("macbook air", 1000)
  #       expect(cash_register_with_discount.apply_discount).to eq("After the discount, the total comes to $800.")
  #     end

  #     it 'reduces the total' do
  #       cash_register.total = 0
  #       cash_register_with_discount.add_item("macbook air", 1000)
  #       expect{cash_register_with_discount.apply_discount}.to change{cash_register_with_discount.total}.by(-200)
  #     end
  #   end

  #   context 'the cash register was not initialized with an employee discount' do
  #     it 'returns a string error message that there is no discount to apply' do
  #       expect(cash_register.apply_discount).to eq("There is no discount to apply.")
  #     end
end
