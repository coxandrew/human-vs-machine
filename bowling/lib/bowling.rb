# bowling.rb

class Bowling
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    total_score = 0
    roll_index = 0

    10.times do
      if strike?(roll_index)
        total_score += 10 + strike_bonus(roll_index)
        roll_index += 1
      elsif spare?(roll_index)
        total_score += 10 + spare_bonus(roll_index)
        roll_index += 2
      else
        total_score += sum_of_pins_in_frame(roll_index)
        roll_index += 2
      end
    end

    total_score
  end

  private

  def sum_of_pins_in_frame(roll_index)
    @rolls[roll_index] + @rolls[roll_index + 1]
  end

  def spare?(roll_index)
    @rolls[roll_index] + @rolls[roll_index + 1] == 10
  end

  def spare_bonus(roll_index)
    @rolls[roll_index + 2]
  end

  def strike?(roll_index)
    @rolls[roll_index] == 10
  end

  def strike_bonus(roll_index)
    @rolls[roll_index + 1] + @rolls[roll_index + 2]
  end
end
