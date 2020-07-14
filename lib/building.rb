require "./lib/renter"
require "./lib/apartment"

class Building

  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    renter_collection = []
    @units.each do |unit|
      if unit.renter == nil
        break
      else
        renter_collection << unit.renter.name
      end
    end
    renter_collection.compact
    renter_collection
  end

  def average_rent
    rent_total = @units.sum do |unit|
      unit.monthly_rent.to_f
    end
    rent_total / @units.count
  end
end
