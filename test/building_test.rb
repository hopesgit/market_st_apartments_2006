require "./lib/renter"
require "./lib/apartment"
require "minitest/autorun"
require "minitest/pride"

class BuildingTest < Minitest::Test

  def test_it_is_a_building
    building = Building.new

    assert_instance_of Building, building
  end

  def test_it_has_units
    building = Building.new

    assert_equal [], building.units

    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    building.add_unit(unit1)
    building.add_unit(unit2)

    assert_equal [unit1, unit2], building.units
  end

  def test_it_can_find_renters
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    renter1 = Renter.new("Aurora")

    building.add_unit(unit1)
    building.add_unit(unit2)

    assert_equal [], building.renters

    unit.add_renter(renter1)

    assert_equal ["Aurora"], building.renters

    renter2 = Renter.new("Tim")
    unit2.add_renter(renter2)

    assert_equal ["Aurora", "Tim"], building.renters
  end
end
