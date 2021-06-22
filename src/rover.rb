require_relative "./directions"

class Rover
  attr_reader :direction, :position

  def initialize(initial_direction, current_position=[0,0])
     @direction = initial_direction
     @position = current_position
  end

  def left_turn
    @direction = @direction.left_turn
  end

  def right_turn
    @direction = @direction.right_turn
  end

  def move
    @position = @direction.move(@position)
  end

  def to_s
    "#{position[0]} #{position[1]} #{direction}"
  end
end
