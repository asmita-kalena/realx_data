require "spec_helper"

describe Rover do  
  context "standing at position (0, 0)" do
    context "facing NORTH" do
      let(:rover) {Rover.new (Directions::NORTH)}
    
      describe "#left_turn" do    
        it "faces WEST" do
          rover.left_turn
          rover.direction.should == Directions::WEST
        end
      end
    
      describe "#right_turn" do
        it "faces EAST" do
          rover.right_turn
          rover.direction.should == Directions::EAST
        end      
      end                 
    
      describe "#move" do
        it "stands at position (0, 1)" do
          rover.move
          rover.position.should == [0, 1]
        end
      end
    end
  
    context "facing WEST" do
      let (:rover) {Rover.new(Directions::WEST)}
   
      describe "#left_turn" do
        it "faces SOUTH" do
          rover.left_turn
          rover.direction.should == Directions::SOUTH
        end
      end
    
      describe "#right_turn" do  
        it "faces NORTH" do
          rover.right_turn
          rover.direction.should == Directions::NORTH
        end
      end
    
      describe "#move" do   
        it "stands at position (-1, 0)" do
          rover.move
          rover.position.should == [-1, 0]
        end
      end
    end  
  
    context "facing SOUTH" do
      let(:rover) {Rover.new(Directions::SOUTH)}
    
      describe "#left_turn" do
        it "faces EAST" do
          rover.left_turn
          rover.direction.should == Directions::EAST
        end
      end
    
      describe "#right_turn" do
        it "faces WEST" do
          rover.right_turn
          rover.direction.should == Directions::WEST
        end
      end
    
      describe "#move" do
        it "stands at position (0, -1)" do
          rover.move
          rover.position.should == [0, -1]
        end
      end
    end
  
    context "facing EAST" do
      let(:rover) {Rover.new(Directions::EAST)}
    
      describe "#left_turn" do
        it "faces NORTH" do
          rover.left_turn
          rover.direction.should == Directions::NORTH
        end
      end

      describe "#right_turn" do
        it "faces SOUTH" do
          rover.right_turn
          rover.direction.should == Directions::SOUTH
        end
      end
    
      describe "#move" do
        it "stands at position (1, 0)" do
          rover.move
          rover.position.should == [1, 0]
        end
      end
    end
  end
end
