require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    i = 0
    binding.pry
    while BRANDS.length < i do
      if brand == BRANDS[i]
        trigger = "dontadd"
        i = BRANDS.length
      end
      i += 1
    end
    if trigger != "dontadd"
      BRANDS << brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
