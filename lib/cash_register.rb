class CashRegister

attr_accessor :total, :discount, :items, :last_transaction 

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
end 

def add_item(title, price, number_of_items = 1)
   self.total += price*number_of_items
   number_of_items.times do 
     items << title 
   end 
   self.last_transaction = price*number_of_items
 end 
     

def apply_discount()
  if @discount > 0  
    @discount = @discount/100.to_f 
    @total = @total - (@total*(@discount))
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end 
end

def void_last_transaction()
  self.total = self.total - self.last_transaction
end 


end 
