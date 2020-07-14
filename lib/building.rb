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
    @units.map do |unit|
      unit.renter.name
    end
    @units.compact
  end

  def average_rent
    rent_total = @units.sum do |unit|
      unit.monthly_rent.to_f
    end
    rent_total / @units.count
  end
end
