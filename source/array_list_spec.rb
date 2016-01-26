require_relative 'array_list'
describe FixedArray do
  before(:all) do
    @array_list = ArrayList.new(5)
  end

  describe "#new" do
    it "creates an array_list of the passed size" do
      expect(@array_list.length).to eq 5
    end
  end

  describe "#add" do
    it "returns the added element from the list" do
      expect(@array_list.add("Hi")).to eq("Hi")
    end
    it "increases the length of the list by one" do
      expect(@array_list.length).to eq 6
    end
  end

  describe "#get" do
    it "returns the value at the given index" do
      expect(@array_list.get(0)).to be nil
    end
    it "raises an exception if passed an index not included in the array" do
      expect{@array_list.get(10)}.to raise_error(RuntimeError, "Out of Bounds")
    end
  end

  describe "#set" do
    it "sets the element at the passed index to the passed element and returns it" do
      expect(@array_list.set(0, 5)).to be 5
    end
    it "raises an exception if passed an index outside of the array" do
      expect{@array_list.set(10, 5)}.to raise_error(RuntimeError, "Out of Bounds")
    end
  end

  describe "#size" do
    it "returns the size of the array" do
      expect(@array_list.size).to be 6
    end
  end

  describe "#insert" do
    it "inserts the given element at the given index and returns the element" do
      expect(@array_list.insert(2, "Hello")).to eq("Hello")
    end
  end
end