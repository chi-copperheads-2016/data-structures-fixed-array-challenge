require_relative 'fixed_array'

describe FixedArray do
  before(:all) do
    @fixed_array = FixedArray.new(5)
  end

  describe "#new" do
    it "creates a fixed array of the passed size" do
      expect(@fixed_array.length).to eq 5
    end
  end

  describe "#get" do
    it "returns the value at the given index" do
      expect(@fixed_array.get(0)).to be nil
    end
    it "raises an exception if passed an index not included in the array" do
      expect(@fixed_array.get(10)).to raise_error
    end
  end
end
