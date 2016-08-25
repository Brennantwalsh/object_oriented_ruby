 module StoreFront 
  class Item
    def initialize(hash)
      @name = hash[:name]
      @price = hash[:price]
      @color = hash[:color]
    end

    def name
      @name
    end

    def price
      @price
    end

    def color
      @color
    end

    def info 
      "The #{@name} costs $#{@price} and is #{@color}."
    end
  end
end