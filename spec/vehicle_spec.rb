require ('rspec')
require ('vehicle')

describe('Vehicle') do
  describe('#age') do
    it('returns age of vehicle') do
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
