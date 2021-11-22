require_relative 'item'

class Checkout
  def initialize
    @total = []
  end

  def scan(item)
		@total.push(item.price)
		"£#{item.price}"
  end

	def total
		"£#{@total.sum}"
	end
	
end
