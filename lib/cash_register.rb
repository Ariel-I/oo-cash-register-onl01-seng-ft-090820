class CashRegister

attr_accessor :total, :discount, :items, :last_transaction 

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
end 

def add_item(title, price, number_of_items = 1)
  if number_of_items > 1 
    i = 0 
    while i < number_of_items
    @items << title 
    i += 1 
  end 
  else 
    @items << title 
end 
  @total += price*number_of_items
  @last_transaction = @total
  @total
end 

def apply_discount()
  if @discount > 0  
    @discount = @discount/100.to_f 
    @total = @total - (@total*(@discount))
    "After the discount, the total comes to {@total.to_i}."
  
end 



def items
end 

def void_last_transaction
  @total -= @last_transaction
end 


end 
