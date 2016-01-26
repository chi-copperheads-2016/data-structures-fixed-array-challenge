require_relative "node"
describe Node do
  before(:all) do
    @node = Node.new("Test")
  end

  describe "#new" do
    it "creates a node object" do
      expect(@node).to be_a(Node)
    end

    it "contains the passed parameter" do
      expect(@node.element).to eq("Test")
    end
  end

  describe "#insert_after" do
    it "adds a pointer to the passed node" do
      new_node = Node.new("Next")
      @node.insert_after(new_node)
      expect(@node.next).to be(new_node)
    end
  end

  describe "#remove_after" do
    it "removes the pointer to any other nodes" do
      @node.remove_after
      expect(@node.next).to be nil
    end
  end

end