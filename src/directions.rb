module Directions
  def self.pole(direction)
    case
      when direction == 'N'
        NORTH
      when direction == 'E'
        EAST
      when direction == 'W'
        WEST
      when direction == 'S'
        SOUTH
    end
  end

  class North
    def left_turn
      WEST
    end

    def right_turn
      EAST
    end

    def move(currentPosition)
      x = Integer(currentPosition[0])
      y = Integer(currentPosition[1]) + 1

      [x, y]
    end

    def to_s
      "N"
    end
  end

  class West
    def left_turn
      SOUTH
    end

    def right_turn
      NORTH
    end

    def move(currentPosition)
      x = Integer(currentPosition[0]) - 1
      y = Integer(currentPosition[1])

      [x, y]
    end

    def to_s
      "W"
    end
  end

  class South
    def left_turn
      EAST
    end

    def right_turn
      WEST
    end

    def move(currentPosition)
      x = Integer(currentPosition[0])
      y = Integer(currentPosition[1]) - 1

      [x, y]
    end

    def to_s
      "S"
    end
  end

  class East
    def left_turn
      NORTH
    end

    def right_turn
      SOUTH
    end

    def move(currentPosition)
      x = Integer(currentPosition[0]) + 1
      y = Integer(currentPosition[1])

      [x, y]
    end

    def to_s
      "E"
    end
  end

  NORTH = North.new
  SOUTH = South.new
  EAST  = East.new
  WEST  = West.new
end
