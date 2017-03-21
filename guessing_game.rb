
class Game
  def initialize
    @count = 0
    @our_number = rand (1..100)
  end

  def guessed_too_low
    puts "you You guessed too low. Try again"
  end

  def guessed_too_high
    puts "you You guessed too high. Try again"
  end

  def play
    loop do
      puts "Please guess a number between 1 and 100. Don't take too long"
      their_guess = gets.chomp.to_i
      @count = @count + 1

      if their_guess < @our_number
        guessed_too_low

      elsif their_guess > @our_number
        guessed_too_high

      else
        puts "Congratulations! You win! You're so smart (or lucky)"
        break
      end
      if @count == 5
        puts "You guessed too many times. Sorry not sorry.¯\\_(ツ)_/¯ "
        break
      end
    end
  end
end
Game.new.play
