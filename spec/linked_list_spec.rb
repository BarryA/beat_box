require "rspec"
require "./lib/node.rb"
require "./lib/linked_list.rb"

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new

    expect(list).to be_a LinkedList
  end

  it "head starts as nil" do
    list = LinkedList.new

    expect(list.head).to be nil
  end
end

describe "#append" do
  it "appends a node to the list" do
    list = LinkedList.new
    list.append("doop")

    expect(list).to be_a LinkedList
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end
end


describe "#count" do
  it "can count the number of elements in the list" do
    list = LinkedList.new
    list.append("doop")

    expect(list.count).to eq(1)
  end
end

describe "to_string" do
  it "can turn the elements of the list into a single string" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.to_string).to eq("doop deep")
  end
end

describe "#prepend" do
  it "can add a node to the beginning of the list" do
    list = LinkedList.new

    list.append("plop")
    list.append("suu")
    list.prepend("dop")
        
    expect(list.head.data).to eq("dop")
    expect(list.to_string).to eq("dop plop suu")
  end
end

describe "#insert" do
  it "can insert one or more elements at a given position in the list" do
    list = LinkedList.new

    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")

    list.insert(3, "sol")

    expect(list.to_string).to eq("dop woo plop sol suu")
  end
end

describe "#find" do
  it "can take two parameters, the first indicating the first position to return and second parameter specifies how many elements to return " do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end
end

describe "#includes?" do
  it "gives back true or false whether the supplied value is in the list" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.includes?("deep")).to eq(true)
    expect(list.includes?("dep")).to eq(false)    
  end
end

describe "#pop" do
  it "can remove the last element of the list and return the value" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.pop).to eq("blop")
    expect(list.to_string).to eq("deep woo shi shu")
  end
end