require_relative "linked_list"
require_relative "node"
describe LinkedList do
  before(:all) do
    @list = LinkedList.new()
  end

  describe "#new" do
    it "instantiates a new LinkedList" do
      expect(@list).to be_a(LinkedList)
    end
  end

  describe "#insert_first" do
    it "inserts an element at the front of the list" do
      node = Node.new("Test")
      @list.insert_first(node)
      expect(@list.get(0)).to eq(node)
    end
  end

  describe "#remove_first" do
    it "removes the first element of the list" do
      @list.remove_first
      expect(@list.get(0)).to be nil
    end
  end

  describe "#insert_last" do
    it "adds element to the end of the list" do
      node = Node.new("Test")
      @list.insert_last(node)
      expect(@list.array.last).to eq(node)
    end
  end

  describe "#remove_last" do
    it "removes the last element of the list" do
      @list.remove_last
      expect(@list.array.last).to be nil
    end
  end
end