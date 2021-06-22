require "spec_helper"

describe Directions::East do
  before :each do
    @east = Directions::East.new
  end
  
  describe "#left_turn" do
    it "returns NORTH" do
      @east.left_turn.should be_equal(Directions::NORTH)
    end
  end
  
  describe "#right_turn" do
    it "returns SOUTH" do
      @east.right_turn.should be_equal(Directions::SOUTH)
    end
  end
  
  describe "#to_s" do
    it "returns E"do
      @east.to_s.should be_eql("E")
    end
  end
  
  describe "#move" do
    context "with current position at (0, 0)" do
      it "returns (1, 0)" do
        @east.move([0, 0]).should == [1, 0]
      end
    end
  end
end
