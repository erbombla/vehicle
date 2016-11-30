class Vehicle
  @@vehicles = []

  def initialize (make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def make
    @make
  end

  def model
    @model
  end

  def year
    @year
  end

  define_singleton_method(:all) do
    @@vehicles
  end

  def save
    @@vehicles.push(self)
  end

  define_singleton_method(:clear) do
    @@vehicles = []
  end

  def age
    current_year = Time.new().year()
    current_year.-(@year)
  end

  def worth_buying?
    japanese_cars = ['Datsun', 'Mazda', 'Toyota', 'Mitsubishi', 'Honda']
    japanese = japanese_cars.include?(@make).&(self.age().<=(50))
  end
end
