
class CashRegister
    attr_accessor :total, :discount
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
        @last_price = 0
    end
    def add_item(title,price,quantity=1)
        @total+=price*quantity
        @last_price = price*quantity
        if quantity>1
            @items += [title]*quantity
        else
            @items << title
        end
    end
    def apply_discount
        if @discount>0
            @total -= @total*@discount/100
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end
    def items
        @items
    end
    def void_last_transaction
        @total -= @last_price
    end
end
