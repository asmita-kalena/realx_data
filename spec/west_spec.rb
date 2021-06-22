require "spec_helper"

describe Directions::West do
  before(:each) do
    @west = Directions::West.new
  end
  
  describe "#left_turn" do  
    it "returns SOUTH" do
      @west.left_turn.should be_equal(Directions::SOUTH)
    end
  end
  
  describe "#right_turn" do
    it "returns NORTH" do
      @west.right_turn.should be_equal(Directions::NORTH)
    end
  end  
  
  describe "#move" do
    context "given current position (0, 0)" do
      it "returns (-1, 0)" do
        @west.move([0, 0]).should == [-1, 0]
      end
    end
  end
  
  describe "#to_s" do
    it "returns W" do
      @west.to_s.should be_eql("W")
    end
  end
end