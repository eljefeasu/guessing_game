def get_user_input
  print "What do you think the integer is? "
  return gets.chomp
end

def is_duplicate?(single_user_input, user_input)
  if user_input.include?(single_user_input)
    puts "I think you might need to go lie down. You entered that number already :P "
  end
end

def higher_or_lower?(computer_number, user_input)
  if user_input.last.to_i > computer_number.to_i
    puts "That is not the number. Your guess was too high."
  end
  if user_input.last.to_i < computer_number.to_i
    puts "That is not the number. Your guess was too low."
  end
end

user_input = []
rand_array=*(0..100)
rand_array.shuffle!
computer_number = rand_array[0]
puts computer_number
puts "I'm thinking of an integer between 1 and 100."

(1..5).each do |num|
  single_user_input = get_user_input
  is_duplicate?(single_user_input, user_input)
  user_input << single_user_input

  if user_input[num - 1].to_i == computer_number
    puts "That's it! You got it, my number was: #{computer_number}"
    break
  end

  higher_or_lower?(computer_number, user_input)

  if num == 5
    puts "I'm sorry, but you were not able to guess my number. The number is #{computer_number}."
  end
end
