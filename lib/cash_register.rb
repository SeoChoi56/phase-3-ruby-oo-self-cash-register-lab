require "pry"

class CashRegister
    attr_accessor :discount, :total
    
    def initialize 
        
        self.total = 0
    end

    def initialize (discount = 20)
        @discount = discount
        self.total = 0
    end



    def add_item(item, price, quantity = 1)
        self.total += (price * quantity)
    end

    def apply_discount
        if self.discount != nil
            self.total *= ((100.00 - self.discount)/100.00)
            return "After the discount, the total comes to $#{self.total.to_i}."
        else
            return "There is no discount to apply."
        end
    end
end
