def get_user_input
  print "What do you think the integer is? "
  return gets.chomp
end

def higher_or_lower?(computer_number, user_input)
  if user_input.uniq.length != user_input.length
    puts "I think you might need to go lie down. You entered that number already :P "
  end
  if user_input.last.to_i > computer_number.to_i
    puts "That is not the number. Your guess was too high."
  end
  if user_input.last.to_i < computer_number.to_i
    puts "That is not the number. Your guess was too low."
  end
end

user_input = []
computer_number = rand(1..100)
puts computer_number
puts "I'm thinking of an integer between 1 and 100."

(1..5).each do |num|
  user_input << get_user_input
  if user_input[num - 1].to_i == computer_number
    puts "That's it! You got it, my number was: #{computer_number}"
    break
  end

  higher_or_lower?(computer_number, user_input)

  if num == 5
    puts "I'm sorry, but you were not able to guess my number."
    break
  end
end
