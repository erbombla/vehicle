require('rspec')
require('dealership')

describe(Dealership) do
  before() do
    Dealership.clear()
  end

  describe('#name') do
    it('returns dealership name') do
      test_dealership = Dealership.new('Miyagi Motors')
      expect(test_dealership.name()).to(eq('Miyagi Motors'))
    end
  end

  describe('#id') do
    it('returns dealership ID') do
      test_dealership = Dealership.new('Miyagi Motors')
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe('#cars') do
    it('initially returns empty array of cars for the dealership') do
      test_dealership = Dealership.new('Miyagi Motors')
      expect(test_dealership.cars()).to(eq([]))
    end
  end

  describe("#save") do
    it('saves a dealership to an array') do
      test_dealership = Dealership.new('Miyagi Motors')
      test_dealership.save()
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('clears all saved dealerships') do
      Dealership.new('Miyagi Motors').save()
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('returns a dealership by its id number') do
      test_dealership = Dealership.new('Miyagi Motors')
      test_dealership.save()
      test_dealership2 = Dealership.new("Jim's Autos")
      test_dealership2.save()
      expect(Dealership.find(test_dealership.id())).to(eq(test_dealership))
    end
  end
end
