require ('rspec')
require ('vehicle')

describe('Vehicle') do
  before() do
    Vehicle.clear()
  end

  describe('#make') do
    it('returns vehicle make') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      expect(test_vehicle.age()).to(eq('Datsun'))
    end
  end

  describe('#model') do
    it('returns vehicle model') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      expect(test_vehicle.age()).to(eq('240z'))
    end
  end

  describe('#year') do
    it('returns year of vehicle') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      expect(test_vehicle.age()).to(eq('1972'))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('.save') do
    it('saves a vehicle to an array') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      expect(test_vehicle.age()).to(eq([test_vehicle]))
    end
  end

  describe('.clear') do
    it('clears all saved vehicles') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      expect(test_vehicle.age()).to(eq([]))
    end
  end

  describe('#age') do
    it('returns vehicle age') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      expect(test_vehicle.age()).to(eq(44))
    end
  end

  describe('#worth_buying?') do
    it('returns false if vehicle is not Japanese and older than 50 yrs') do
      test_vehicle = Vehicle.new('Porsche', 'Gmund', 1949)
      expect(test_vehicle.worth_buying?()).to(eq(false))
    end
  end

end
