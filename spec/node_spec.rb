require "rspec"
require "./lib/node.rb"

RSpec.describe Node do
  it "exists" do
    node = Node.new("plop")

    expect(node).to be_an_instance_of(Node)
  end

  it "can return data" do
    node = Node.new("plop")

    expect(node.data).to eq("plop")
  end

  it "points to the next node" do
    node = Node.new("plop")

    expect(node.next_node).to eq(nil)
  end
end