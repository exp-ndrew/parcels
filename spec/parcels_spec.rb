require 'rspec'
require 'parcels'

describe(Parcel) do
  it("Is initialized with three dimensional values and a weight") do
    newParcel = Parcel.new(10,5,4,2)
      expect(newParcel).to be_an_instance_of Parcel
  end

  it("Creates a method to return each dimension outside the object") do
    newParcel = Parcel.new(10,5,4,2)
      expect(newParcel.length).to eq(10)
      expect(newParcel.height).to eq(5)
      expect(newParcel.width).to eq(4)
      expect(newParcel.weight).to eq(2)
  end

  it("returns the volume of the package when .volume is called on the parcel object") do
    newParcel = Parcel.new(10,5,4,2)
    expect(newParcel.volume).to eq(200)
  end

  it("returns the cost to ship of the package when .cost_to_ship is called on the parcel object") do
    newParcel = Parcel.new(10,5,4,2)
    expect(newParcel.cost_to_ship).to eq("4.00")
  end
end

