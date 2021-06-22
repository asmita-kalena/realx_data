class Operator

  def initialize(rover)
    @rover = rover
  end

  def receive(letters)
    letters.each_char do |letter|
      case
        when letter == 'L'
          @rover.left_turn
        when letter == 'R'
          @rover.right_turn
        when letter == 'M'
          @rover.move
      end
    end
  end
end
