class Vehicle
  def initialize (make, model, year)
    @year = year
  end

  def age
    current_year = Time.new().year()
    current_year.-(@year)
  end

  def worth_buying?
    japanese_cars = ['Datsun', 'Mazda', 'Toyota', 'Mitsubishi', 'Honda']
    japanese = japanese_cars.include?(@make)
    new_enough = age().<=(50)
    japanese and new_enough
  end

end
