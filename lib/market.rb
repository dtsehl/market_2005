class Market

  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    vendors << vendor
  end

  def vendor_names
    vendors.map { |vendor| vendor.name }
  end

  def vendors_that_sell(item)
    vendors.find_all { |vendor| vendor.inventory.include?(item) }
  end

  def total_inventory
    final_hash = {}

    vendors.reduce(0) do |sum, vendor|
      vendor.inventory.reduce(0) do |acc, item|
        final_hash[item.first] = {quantity: sum + item.last, vendors: [vendors_that_sell(item.first)].flatten}
      end
    end
# Had trouble with getting the total quantity for the item, I believe the rest was OK.
  end

end
