require ('rspec')
require ('vehicle')

describe('Vehicle') do
  before() do
    Vehicle.clear()
  end

  describe('#make') do
    it('returns vehicle make') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      expect(test_vehicle.make()).to(eq('Datsun'))
    end
  end

  describe('#model') do
    it('returns vehicle model') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      expect(test_vehicle.model()).to(eq('240z'))
    end
  end

  describe('#year') do
    it('returns year of vehicle') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      expect(test_vehicle.year()).to(eq(1972))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a vehicle to an array') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  describe('.clear') do
    it('clears all saved vehicles') do
      Vehicle.new('Datsun', '240z', 1972).save()
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the vehicle id') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      test_vehicle.save()
      expect(test_vehicle.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('returns a vehicle by its id') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      test_vehicle.save()
      test_vehicle2 = Vehicle.new('Mazda', 'RX-7', 1981)
      test_vehicle2.save()
      expect(Vehicle.find(test_vehicle.id())).to(eq(test_vehicle))
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
