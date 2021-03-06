require "spec_helper"

describe Directions::South do
  before :each do
    @south = Directions::South.new
  end
  
  describe "#left_turn" do 
    it "returns EAST" do
      @south.left_turn.should be_equal(Directions::EAST)
    end
  end
  
  describe "#right_turn" do
    it "returns WEST" do
      @south.right_turn.should be_equal(Directions::WEST)
    end
  end
  
  describe "#move" do
    context "given position (0, 0)" do
      it "returns (0, -1)" do
        @south.move([0, 0]).should == [0, -1]
      end
    end
  end
  
  describe "#to_s" do
    it "returns S" do
      @south.to_s.should be_eql("S")
    end
  end
end