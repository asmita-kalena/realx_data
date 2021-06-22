require "spec_helper"

describe Directions::North do
  before(:each) do
    @north = Directions::North.new
  end                             
  
  describe "#left_turn" do
    it "returns WEST" do
      @north.left_turn.should be_equal(Directions::WEST)
    end
  end
  
  describe "#right_turn" do
    it "returns EAST" do
      @north.right_turn.should be_equal(Directions::EAST)
    end
  end
  
  describe "#move" do
    context "with current position at (0, 0)" do
      it "returns (0, 1)" do
        @north.move([0, 0]).should == [0, 1]
      end
    end
  end  
  
  describe "#to_s" do
    it "returns N" do
      @north.to_s.should be_eql("N")
    end
  end
end