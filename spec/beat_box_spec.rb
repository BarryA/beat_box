require "rspec"
require "./lib/beat_box.rb"
require "./lib/linked_list.rb"
require "./lib/node.rb"

RSpec.describe BeatBox do
  it "can be initialized" do
    bb = BeatBox.new

    expect(bb).to be_instance_of(BeatBox)
  end

  it "creates an instance of an empty LinkedList object with head == nil" do
    bb = BeatBox.new

    expect(bb.list).to be_instance_of(LinkedList)
    expect(bb.list.head).to be nil
  end
end

describe "#append" do  
  it 'can add one or more nodes to the list' do
    bb = BeatBox.new

    bb.append("deep doo ditt")

    expect(bb.list.to_string).to eq("deep doo ditt")
    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")
  end
end

describe "#count" do
  it "counts the number of elements in the list" do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    bb.append("woo hoo shu")

    expect(bb.count).to eq(6)
  end
end

describe "#play" do
  it "plays the sounds stored in the list" do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    bb.append("woo hoo shu")
        
    bb.play
  end
end