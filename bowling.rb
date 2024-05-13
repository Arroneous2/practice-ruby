
class Bowl
  #make a roll
  #a roll returns how many pins were knocked down based on remaining
  def roll(pins_remaining)
    pins_knocked_down = rand(pins_remaining+1)
    return pins_knocked_down
  end
  
  #make a turn
  #a turn is one or two rolls depending on if it was a strike
  def turn()
    pins_knocked_down_roll_1 = self.roll(10)
    total_pins_knocked_down = [pins_knocked_down_roll_1, self.roll(10-pins_knocked_down_roll_1)]

    return total_pins_knocked_down
  end
  
  #keep track of the turns in an array
  def run_frames()
    pins_per_frame = []
    10.times do 
      pins_per_frame.push(self.turn())
    end
    
    #know whether or not to have to have a extra roll
    if pins_per_frame[9][0] == 10
      pins_per_frame.push(self.turn())

      if pins_per_frame[10][0] == 10
        pins_per_frame.push([self.roll(10), 0])
      end
    elsif pins_per_frame[9][0] + pins_per_frame[9][1] == 10
      pins_per_frame.push([self.roll(10), 0])
    end



    p pins_per_frame.length
    return pins_per_frame
  end
  
  
  #score the array
  def score_frames(frames)
    score = 0
    index = 0
    while index < 10
      mini_score = frames[index][0]+frames[index][1]
      if frames[index][0]+frames[index][1] == 10
        mini_score += frames[index+1][0]
      end

      score += mini_score
    end
    return score
  end

end

bowl1 = Bowl.new()
p  bowl1.run_frames()