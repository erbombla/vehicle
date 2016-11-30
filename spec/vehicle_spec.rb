require ('rspec')
require ('vehicle')

describe('Vehicle') do
  describe('#age') do
    it('returns age of vehicle') do
      test_vehicle = Vehicle.new('Datsun', '240z', 1972)
      expect(test_vehicle.age()).to(eq(44))
    end
  end
end
