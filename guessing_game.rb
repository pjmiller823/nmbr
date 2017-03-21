
class Game
  def initialize
    @count = 0
    @our_number = rand(1..100)
    @numbers = []
  end

  def guessed_too_low(their_guess)
    puts "you You guessed too low. Try again"
    double(their_guess)
    @numbers << their_guess
    # not_helping(their_guess) # added to call the not_helping_low method. Not working
  end

  def guessed_too_high(their_guess)
    puts "you You guessed too high. Try again"
    double(their_guess)
    # not_helping(their_guess)
    @numbers << their_guess
  end

  def play
    loop do
      puts "Please guess a number between 1 and 100. Don't take too long"
      their_guess = gets.chomp.to_i
      @count = @count + 1

      if their_guess < @our_number
        guessed_too_low(their_guess)

      elsif their_guess > @our_number
        guessed_too_high(their_guess)

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

  def double(their_guess)
    if @numbers.include?(their_guess)
      puts "Seriously? That's not helping."
    end
  end

  # def not_helping(their_guess)
  #   if their_guess < @numbers.last && @numbers.last < @our_number
  #     puts "You're not helping yourself"
  #   elsif their_guess > @numbers.last && @numbers.last > @our_number
  #     puts "You're not helping yourself"
  #   end
  # end

end
Game.new.play
