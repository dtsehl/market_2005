class Vendor

  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    return 0 if !inventory.include?(item)
    inventory[item]
  end

  def stock(item, qty)
    if inventory[item].nil?
      inventory[item] = qty
    else
      inventory[item] += qty
    end
  end

end
