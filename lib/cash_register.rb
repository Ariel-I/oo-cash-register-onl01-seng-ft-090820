class CashRegister

attr_accessor :total, :discount, :items

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
end 

def add_item(title, price, number_of_items = 0)
  if number_of_items > 1 
    i = 0 
    while i < number_of_items
    @items << title 
    i += 1 
  else 
    @items << title 
end 
end 

def apply_discount(amount)
 
end 

def total(current_total)
  
end 

def items
end 

def void_last_transaction
end 


end 
