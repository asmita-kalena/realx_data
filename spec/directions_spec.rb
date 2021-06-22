require "spec_helper"

describe Directions do
  describe "#pole" do
    it "when given N returns NORTH" do
      Directions::pole("N").should be_equal(Directions::NORTH)
    end
    
    it "when given S returns SOUTH" do
      Directions::pole("S").should be_equal(Directions::SOUTH)
    end
    
    it "when given E returns EAST" do
      Directions::pole("E").should be_equal(Directions::EAST)
    end
    
    it "when given W returns WEST" do
      Directions::pole("W").should be_equal(Directions::WEST)
    end
    
    it "when given any random value returns nil" do
      Directions::pole("").should be_nil
    end
  end
end