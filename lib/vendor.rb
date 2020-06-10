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

  def potential_revenue
    inventory.reduce(0.0) do |accum, item|
      accum = (item.first.price.delete("$").to_f * item.last) + accum
      accum
    end
  end

end
