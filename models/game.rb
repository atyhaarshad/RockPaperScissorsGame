class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play_game()
    if (@hand1 == @hand2)
      return "Draw"
    end
    if (@hand1 == "rock")
      if (@hand2 == "scissor")
        return "Rock wins"
      else
        return "#{@hand2.capitalize} wins"
      end
    end
    if (@hand1 == "scissor")
      if (@hand2 == "paper")
        return "Scissor wins"
      else
        return "#{@hand2.capitalize} wins"
      end
    end
    if (@hand1 == "paper")
      if (@hand2 == "rock")
        return "Paper wins"
      else
        return "#{@hand2.capitalize} wins"
      end
    end
  end
end
