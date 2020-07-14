require "./lib/renter"
require "minitest/autorun"
require "minitest/pride"

class RenterTest < Minitest::Test

  def test_it_is_a_renter
    renter1 = Renter.new("Jessie")

    assert_instance_of Renter, renter1
  end

  def test_it_has_a_name
    renter1 = Renter.new("Jessie")

    assert_equal "Jessie", renter1.name
  end
end
