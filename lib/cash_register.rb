class CashRegister

    attr_accessor :discount, :total, :items, :last_transaction

    def initialize (discount = 0, total = 0)

        @discount = discount
        @total = total
        @items = []
        @last_transaction = 0
    end

  def total
    @total
  end



  def add_item(title, price, quantity=1)
    self.total += price*quantity
    quantity.times do
    @items << title
    @last_transaction = price * quantity
    end
end

def apply_discount
    if @discount > 0
      @total=self.total*0.8
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
    @last_transaction = 0
    @total = 0 if @total < 0
  end
end
