require "./lib/renter"

class Apartment

  attr_reader :details, :renter

  def initialize(details)
    @details = details
    @renter = nil
  end

  def number
    @details[:number]
  end

  def monthly_rent
    @details[:monthly_rent]
  end

  def bathrooms
    @details[:bathrooms]
  end

  def bedrooms
    @details[:bedrooms]
  end

  def add_renter(renter)
    @renter = renter
  end
end
