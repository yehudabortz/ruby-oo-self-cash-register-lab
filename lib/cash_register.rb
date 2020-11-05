require 'pry'
class CashRegister
    attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_transaction
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

   

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do 
            items << title
        end
        self.last_transaction = price * quantity
    
    end
   
    def apply_discount
        if self.discount > 0
        @discount = discount.to_f * 0.01
        @total -= @total.to_f * @discount
        "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
      end
end
