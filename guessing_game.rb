our_number = rand (1..100)
count = 0


loop do
  puts "Please guess a number"
  their_guess = gets.chomp.to_i
  count = count + 1

  if their_guess < our_number
    puts "You guessed too low. Try again"

  elsif their_guess > our_number
    puts "You guessed too high. Try again"

  else
    puts "Congratulations! You win! You're so smart (or lucky)"
    break
  end
  puts "your count is #{count}"
  if count == 5
    puts "You guessed too many times. Sorry not sorry.¯\_(ツ)_/¯ "
    break
  end
end




#multiple if statements restart the count. Switch to elsif (let it snow) with else
# if their_guess < our_number
#   puts "You guessed too low. Try again"
#   their_guess =gets.chomp.to_i
# end
#
# if their_guess > our_number
#   puts "You guessed too high. Try again"
#   their_guess = gets.chomp.to_i
# end
#
# if their_guess == our_number
#   puts "Congratulations! You win! You're so smart (or lucky)"
#   break
# end
# puts "your count is #{count}"
# if count == 5
#   puts "You guessed too many times. Sorry not sorry.¯\_(ツ)_/¯ "
#   break
# end


# def guessed_too_low
#   puts "you"
# end
#
# if guess < our_number
#   guessed_too_low
# end
