require_relative 'fixed_array'

describe FixedArray do

  let(:fixed_array) { FixedArray.new(5) }


  describe "#new" do
    it "Creates a new Fixed Array object and returns the array" do
      expect(fixed_array).to be_an_instance_of FixedArray
    end


    it "Instantiates and returns a new array with a fixed width" do
      expect(fixed_array.array.length).to equal(5)
    end
  end

  describe "#get" do
    it "Returns the element at a given index" do
      expect(fixed_array.get(2)).to be(nil)
    end
  end

  describe "#set" do
    it "Sets an element at a given index" do
      fixed_array.set(2, "test")
      expect(fixed_array.array[2]).to be_a(String)
    end
  end

end
